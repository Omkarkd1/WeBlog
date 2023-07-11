package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/live")
public class liveServlet extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		try {
			String title=req.getParameter("title");
			String startDate=req.getParameter("date");
			String starttime=req.getParameter("stime");
			String endtime=req.getParameter("etime");
			String pass=req.getParameter("pass");
			
			PrintWriter out=res.getWriter();
		
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn;
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblog","root","");
			PreparedStatement ps=conn.prepareStatement("insert into liveevent(EventTitle,EventDate,StartTime,EndTime,Password) values(?,?,?,?,?)");
			ps.setString(01, title);
			ps.setString(02, startDate);
			ps.setString(03, starttime);
			ps.setString(04, endtime);
			ps.setString(05, pass);
			ps.executeUpdate();
			res.sendRedirect("LiveEvents.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
}
