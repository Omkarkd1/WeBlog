package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/log")
public class lgnServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		
		try {
		Class.forName("com.mysql.jdbc.Driver");
		PrintWriter out=res.getWriter();
		String name=req.getParameter("username");
		String psw=req.getParameter("pass");
		HttpSession session=req.getSession();
		session.setAttribute("username", name);
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/weblog","root","");
		PreparedStatement result=
		conn.prepareStatement("select ID,Name,Password from signup where Name= '"+name+"'"+"&& Password= '"+psw+"'");
		ResultSet rs= result.executeQuery();
		if(rs.next())
		{ 
			int i=rs.getInt("ID");
			String a=rs.getString("Name");
			String b=rs.getString("Password");
			PreparedStatement ps=conn.prepareStatement("insert into login(SID,Name,Password) values(?,?,?)");
			ps.setInt(01,i);
			ps.setString(02,name);
			ps.setString(03, psw);
			ps.executeUpdate();
			res.sendRedirect("Blogpost.jsp");
		}
		else
		{
			out.println("<h2>Signup first</h2>");
		}
		
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
