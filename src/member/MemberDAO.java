package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import global.Constants;
import global.DatabaseFactory;
import global.Vendor;

/**
 * @date :2016. 7. 1.
 * @author :ckan
 * @file :MemberDAO.java
 * @story :
 */
public class MemberDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;// executeQuery() 에서만 리턴받는 객체
	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	private MemberDAO() {
		con = DatabaseFactory.createDatabase(Vendor.ORACLE,Constants.USER_ID,Constants.USER_PW).getConnection();
	}
	public int insert(MemberBean stu){
		int result = 0;
		String sql = "insert into member(id,pw,name,reg_date,ssn_id,email,profile_img) "
				+ "values(?,?,?,?,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, stu.getId());
			pstmt.setString(2, stu.getPw());
			pstmt.setString(3, stu.getName());
			pstmt.setString(4, stu.getRegDate());
			pstmt.setString(5, stu.getSsn());
			pstmt.setString(6, stu.getEmail());
			pstmt.setString(7, stu.getProfileImg());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int update(MemberBean stu){
		int result = 0;
		String sql = "update member "
				+ "set pw = ?, "
				+ "email = NVL(?,email) "
			    + "where id = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, stu.getChangepw());
			pstmt.setString(2, stu.getEmail());
			pstmt.setString(3, stu.getId());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int delete(String id){
		int result = 0;
		String sql = "delete member "
			    + " where id = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	// list
	public List<?> list(){
		String sql = "select * from member";
		List<MemberBean> tempList = new ArrayList<MemberBean>();
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MemberBean mem = new MemberBean(rs.getString("NAME"), rs.getString("ID"), rs.getString("PW"), rs.getString("SSN_ID"));
				mem.setRegDate(rs.getString("REG_DATE"));
				mem.setEmail(rs.getString("EMAIL"));
				mem.setProfileImg(rs.getString("PROFILE_IMG"));
				tempList.add(mem);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return tempList;
	}	
	// findByPK
	public MemberBean findById(String pk) {
		String sql = "select * from member where id = ?";
		MemberBean tempBean = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pk);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				tempBean = new MemberBean(rs.getString("NAME"), rs.getString("ID"), rs.getString("PW"), rs.getString("SSN_ID"));
				tempBean.setRegDate(rs.getString("REG_DATE"));
				tempBean.setEmail(rs.getString("EMAIL"));
				tempBean.setProfileImg(rs.getString("PROFILE_IMG"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tempBean;
	}
	// findByName
	public List<?> findByName(String name) {
		String sql = "select * from member where name = ?";
		List<MemberBean> tempList = new ArrayList<MemberBean>();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MemberBean mem = new MemberBean(rs.getString("NAME"), rs.getString("ID"), rs.getString("PW"), rs.getString("SSN_ID"));
				mem.setRegDate(rs.getString("REG_DATE"));
				mem.setEmail(rs.getString("EMAIL"));
				mem.setProfileImg(rs.getString("PROFILE_IMG"));
				tempList.add(mem);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return tempList;
	}
	// count
	public int count() {
		int result = 0;
		String sql = "select count(*) count from member ";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean login(MemberBean member){
		boolean loginOk = false;
		MemberBean m = this.findById(member.getId());
		if(m.getPw().equals(member.getPw())){
			loginOk = true;
		}
		return loginOk;
	}

	public int findByGender(String gender) {
		int result = 0;
		String sql = "select count(*) count from member "
				+ "where ((? = '남' and "
				+ " substrb(ssn_id,8,1) in ('1','3','5','7')) or"
				+ "(? = '여' and "
				+ " substrb(ssn_id,8,1) in ('2','4','6','8'))) ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, gender);
			pstmt.setString(2, gender);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int findId(String id) {
		int result = 0;
		String sql = "select count(*) count from member "
				+ "where id = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int findPw(MemberBean mem) {
		int result = 0;
		String sql = "select count(*) count from member "
				+ "where id = ? "
				+ "and pw = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mem.getId());
			pstmt.setString(2, mem.getPw());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
