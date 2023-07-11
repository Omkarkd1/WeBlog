package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class logoutServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			PrintWriter out=res.getWriter();
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/weblog","root","");
			PreparedStatement result=
			conn.prepareStatement("update login set Logout_time= CURRENT_TIMESTAMP where Logout_time is null");
			result.executeUpdate();
			res.sendRedirect("index.jsp");
			} catch (SQLException | ClassNotFoundException e) {
				e.printStackTrace();
			}

	}
}
