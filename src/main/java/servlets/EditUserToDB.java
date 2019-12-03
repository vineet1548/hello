package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.User;
import user.UserHandler;


@WebServlet(urlPatterns ="/EditUserToDB")
@SuppressWarnings("serial")


public class EditUserToDB extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		int id=Integer.parseInt(req.getParameter("id")); 
		  String name=req.getParameter("UserName");
		  String number=req.getParameter("number");
		  String email=req.getParameter("email");
		  String password=req.getParameter("password");
		  
		  
		  User u=new User(id, name,number,email,password);
		  
		  UserHandler uh=new UserHandler();
		  System.out.println(uh.update(u));
		  
		  
			resp.sendRedirect("viewuser.jsp");
		
		
	}
	

}
