package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.Category;
import category.CategoryHandler;




@SuppressWarnings("serial")
@WebListener
public class AddCategoryToDB extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException,
	ServletException
	{
		System.out.println("AddCategoryToDB POST");
		String catName=req.getParameter("categoryName"),catDesc=req.getParameter("CategoryDescription");
		System.out.printf("Name: %s,DESC: %s\n", catName,catDesc);
		Category c=new Category(catName , catDesc);
		CategoryHandler ch=new CategoryHandler();
		ch.insert(c);
		System.out.println("Category Added Ssuccessfully");
		resp.sendRedirect("ViewCategory.jsp");
	}

}
