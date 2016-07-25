package member;

import java.util.List;
import java.util.Map;

import account.AccountService;
import account.AccountServiceImpl;

public class MemberServiceImpl implements MemberService{
	MemberDAO dao = MemberDAO.getInstance(); // 싱글톤 패턴
	AccountService accService = AccountServiceImpl.getInstance();
	public static MemberBean session;
	MemberBean s;
	private static MemberServiceImpl instance = new MemberServiceImpl();
	public static MemberServiceImpl getInstance() {
		return instance;
	}
	private MemberServiceImpl() {
	}
	@Override
	public String open(MemberBean stu) {
		int cnt = findId(stu.getId());
		if (cnt == 0) {
			return (dao.insert(stu) == 1)?"회원가입 축하합니다.":"회원가입 실패";		
		} else {
			return "중복 ID 입니다.";
		}
	}
	@Override
	public MemberBean show() {
		return session;
	}
	@Override
	public void update(MemberBean stu) {
		if (dao.update(stu) !=0 ) {
			System.out.println("update 건수 : "+dao.update(stu));
			session = this.findById(stu.getId());
		} 		
	}
	@Override
	public String delete(String id) {
		int cnt = 0;
		String msg = "";
		if (dao.delete(id) != 0) {
			session = this.findById(id);
			msg = "삭제 성공 입니다.";
		}else{
			msg = "삭제 실패입니다.";
		}
		return msg;
	}
	public int count() {
		return dao.count();
	}
	public MemberBean findById(String id) {
		return dao.findById(id);
	}
	public List<?> list() {
		return dao.list();
	}
	public List<?> findBy(String name) {
		return dao.findByName(name);
	}
	@Override
	public Map<?, ?> map() {
		// TODO Auto-generated method stub
		return null;
	}
	public String login(MemberBean member) {
		String result = "";
		if (findId(member.getId()) == 0) {
			result = "fail";
		} else {
			if (dao.login(member)) {
				session = findById(member.getId());
				result = session.getName();
				accService.map();
			} else {
				result = "fail";
			}
		}
		return result;
	}
	@Override
	public int genderCount(String gender) {
		return dao.findByGender(gender);
	}
	@Override
	public int findId(String id) {
		return dao.findId(id);
	}
	@Override
	public int findPw(MemberBean mem) {
		return dao.findPw(mem);
	}
	@Override
	public void logout(MemberBean mem) {
		if (session.getId().equals(mem.getId()) &&
			session.getPw().equals(mem.getPw())	
		   ) {
			session = null;
		} 
	}
}
