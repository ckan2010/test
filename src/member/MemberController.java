package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import global.Command;
import global.DispatcherServlet;
import global.Separator;

@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("=== member컨트롤러 진입 ===");
		HttpSession session = request.getSession();
		Command c = Separator.init(request,response);
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
		System.out.println("액션?"+Separator.command.getAction());
		switch (Separator.command.getAction()) {
		case "login":
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			String name = service.login(member);
			if (name.equals("fail")) {
				Separator.command.setPage("login");
				Separator.command.setView();
			} else {
				member = service.show();
				request.setAttribute("member", member);
				session.setAttribute("member", member);
				Separator.command.setDirectory("global");
				Separator.command.setView();
			}
			break;
		case "regist":
			member.setName(request.getParameter("name"));
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member.setSsn(request.getParameter("ssn_id"));
		    member.setEmail(request.getParameter("email"));
		    member.setRegDate();
		    member.setPhone(request.getParameter("phone"));
		    String msg = service.open(member);
		    if (msg.equals("중복 ID 입니다.")||msg.equals("회원가입 실패")) {
		    	Separator.command.setPage("regist");
				Separator.command.setView();
			} else {
				Separator.command.setPage("login");
				Separator.command.setView();
			}
			break;
		case "detail":
			member = service.show();
			if (member.getId().equals("")) {
				Separator.command.setPage("login");
				Separator.command.setView();
			}
			break;
		case "update":
			member = (MemberBean) session.getAttribute("member");
			member.setChangepw(request.getParameter("pw"));
			member.setEmail(request.getParameter("email"));
			member.setId(request.getParameter("id"));
			member.setPhone(request.getParameter("phone"));
			service.update(member);
			break;
		case "delete1":
			member = (MemberBean) session.getAttribute("member");
			String confpw = request.getParameter("confpw");
			session.invalidate();
			if(request.getParameter("pw").equals(confpw)){
				member.setId(request.getParameter("id"));
				member.setPw(confpw);	
				String msg1 = service.delete(request.getParameter("id"));
				Separator.command.setDirectory(request.getParameter("directory"));
				Separator.command.setView();
			}else{
				Separator.command.setPage("delete");
				Separator.command.setView();
			}
			break;
		case "log_out":
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			service.logout(member);
			Separator.command.setPage("login");
			Separator.command.setView();
			break;
		case "count":
			int cnt = service.count();
			request.setAttribute("cnt", cnt);
			break;
		case "find_by_id":
			request.setAttribute("member", service.findById(request.getParameter("keyword")));
			break;
		case "find_by_name":
			request.setAttribute("list", service.findBy(request.getParameter("keyword")));
			break;
		case "list":
			request.setAttribute("list", service.list());
			break;
		default:
			break;
		}
		DispatcherServlet.send(request, response, Separator.command);
	}

}