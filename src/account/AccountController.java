package account;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AccountController
 */
@WebServlet({"/account/main.do",
	        "/account/regist.do", 
         	"/account/deposit.do", 
         	"/account/withdraw.do", 
         	"/account/update.do", 
         	"/account/delete.do", 
         	"/account/list.do", 
         	"/account/search.do", 
         	"/account/count.do", 
		    })
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String servletPath = request.getServletPath();
		String[] arr = servletPath.split("/");
		String pkg =  arr[1];
		String view = arr[2].substring(0, arr[2].indexOf("."));
		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/"+pkg+"/"+view+".jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
