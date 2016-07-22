package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import global.Command;
import global.DispatcherServlet;
import global.Separator;

@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("=== member컨트롤러 진입 ===");
		Command c = Separator.init(request,response);
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
		switch (Separator.command.getAction()) {
		case "login":
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			String name = service.login(member);
			if (name.equals("")) {
				Separator.command.setPage("login");
				Separator.command.setView();
			} else {
				member = service.show();
				Separator.command.setDirectory(request.getParameter("directory"));
				request.setAttribute("member", member);
			}
			break;
		case "regist":
			member.setName(request.getParameter("name"));
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member.setSsn(request.getParameter("ssn_id"));
		    member.setEmail(request.getParameter("email"));
		    member.setRegDate();
		    String msg = service.open(member);
		    if (msg.equals("중복 ID 입니다.")||msg.equals("회원가입 실패")) {
		    	Separator.command.setPage("regist");
				Separator.command.setView();
				request.setAttribute("name", msg);
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
			} else {
				request.setAttribute("member", member);
			}
			break;
		case "update":
			member = service.show();
			request.setAttribute("member", member);
			break;
		case "update2":
			service.update(member);
			member = service.show();
			Separator.command.setPage("detail");
			Separator.command.setView();
			request.setAttribute("member", member);
		case "delete":
			member = service.show();
			request.setAttribute("member", member);
			break;
		case "delete1":
			member = service.show();
			System.out.println("member ID : "+member.getId());
			System.out.println("member pw : "+member.getPw());
			String id = member.getId();
			String pw = member.getPw();
			String confpw = request.getParameter("confpw");
			System.out.println("ID : "+id);
			System.out.println("pw : "+pw);
			System.out.println("confpw : "+confpw);
			if(pw.equals(confpw)){
				member.setId(id);
				member.setPw(confpw);	
				String msg1 = service.delete(id);
				member = service.show();
				Separator.command.setDirectory(request.getParameter("directory"));
				request.setAttribute("member", member);
			}else{
				Separator.command.setPage("delete");
				Separator.command.setView();
				request.setAttribute("member", member);
			}
			break;
		default:
			member = service.show();
			request.setAttribute("member", member);
			break;
		}
		DispatcherServlet.send(request, response, Separator.command);
	}

}