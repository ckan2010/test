package home;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javafx.scene.shape.Path;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

/**
 * Servlet implementation class HomeController
 */
@WebServlet({"/intro.do"})
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("/WEB-INF/global/"+request.getParameter("page")+".jsp");
		dis.forward(request, response);
	}
}
