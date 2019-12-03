package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.ProductHandler;
@SuppressWarnings("serial")

@WebServlet(urlPatterns = "/DeleteProductfromDB")
public class DeleteProductfromDB extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws  IOException,
	ServletException{
		// TODO Auto-generated method stub
		
		
	  int id=Integer.parseInt(req.getParameter("id"));
	  
	  ProductHandler ph=new ProductHandler();
	  ph.deleteById(id);
	  
	  
		resp.sendRedirect("viewProduct.jsp");
	}

	
}