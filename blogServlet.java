package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/blog")
public class blogServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException 
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");
		PrintWriter out=res.getWriter();
		String title=req.getParameter("Blogtitle");
		String type=req.getParameter("Blogtype");
		String blog=req.getParameter("Blog");
		HttpSession session=req.getSession();
		String name= (String) session.getAttribute("username");
		Connection conn;
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblog","root","");
		PreparedStatement ps=conn.prepareStatement("insert into blog(Name,Blog_title,Blog_type,Blog) value (?,?,?,?)");
		ps.setString(01, name);
		ps.setString(02, title);
		ps.setString(03, type);
		ps.setString(04, blog);
		ps.executeUpdate();
		
		res.sendRedirect("ReadBlog.jsp");
		} 
		catch (SQLException | ClassNotFoundException e)
		{	
			e.printStackTrace();
		}
		
	}
}
