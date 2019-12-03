package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.User;
import user.UserHandler;

@WebServlet("/SetActive")
public class SetActive extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int value = Integer.parseInt(req.getParameter("value"));
		int id = Integer.parseInt(req.getParameter("id"));
		
		UserHandler uh = new UserHandler();
		
		User u = uh.fetchUser(id);
		u.setActive((short)(value));
		
		uh.update(u);
		
		resp.sendRedirect("viewuser.jsp");
		
	}

	
	
}
