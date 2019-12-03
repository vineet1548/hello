/**package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import product.Product;
import product.ProductHandler;

@WebServlet(urlPatterns="/EditProductToDB")
public class EditProductToDB extends HttpServlet {
	@Override
	protected void  doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException{
		
		
		int id = Integer.parseInt(req.getParameter("id"));
		String name =  req.getParameter("name");
		String description = req.getParameter("description");
		double price = Double.parseDouble(req.getParameter("price"));
		short stockqty = Short.parseShort(req.getParameter("stockqty"));
		short categoryId= Short.parseShort(req.getParameter("categoryId"));
		
		Product pr= new Product(id, name , description, price, stockqty, categoryId );
		
		ProductHandler ph= new ProductHandler();
		System.out.println(ph.update(pr));
		
		//System.out.println(ph.update(p));
		
		resp.sendRedirect("ViewCategory.jsp");
		
	}

}**/

