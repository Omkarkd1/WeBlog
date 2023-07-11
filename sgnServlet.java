package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import org.apache.tomcat.util.file.Matcher;
import java.sql.*;

import javax.servlet.http.*;

@WebServlet("/sgn")
public class sgnServlet extends HttpServlet {
	public void Insertdata(String name,String email,String psw,PrintWriter out,HttpServletResponse res) throws SQLException
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/weblog","root","");
			PreparedStatement ps=conn.prepareStatement("insert into signup(Name,EmailID,Password) values(?,?,?)");
			ps.setString(01,name );
			ps.setString(02,email );
			ps.setString(03,psw );
			ps.executeUpdate();
			res.sendRedirect("Login.jsp");
		
		} catch (Exception e){
			out.println(e.getMessage());
		}
	}
	
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		int uflag=0,eflag=0,pflag=0;
		String name=req.getParameter("username");
		String regex = "^[A-Za-z]\\w{3,19}$";
        Pattern p = Pattern.compile(regex);
        PrintWriter out=res.getWriter();
        java.util.regex.Matcher m;
        if (name == null) {
            out.println("Please enter valid username");
        }
        m = p.matcher(name);
        if(m.matches())
        {
        	uflag=1;
        }
        else
        {
        	out.print("Invalid name");
        }
        
        String email=req.getParameter("email");
        regex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
                "[a-zA-Z0-9_+&*-]+)*@" +
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
                "A-Z]{2,7}$";
        p = Pattern.compile(regex);
        if (email == null) {
            out.println("\nPlease enter Email");
        }
        m = p.matcher(email);
        if(m.matches())
        {
        	eflag=1;
        }
        else
        {
        	out.print("\nInvalid email "+email);
        }
        
		String psw=req.getParameter("pass");
		regex = "^(?=.*[0-9])"+"(?=.*[a-z])(?=.*[A-Z])"+"(?=.*[@#$%^&+=])"+"(?=\\S+$).{8,20}$";
        p = Pattern.compile(regex);
        if (psw == null) {
            out.println("\nPlease enter password");
        }
        m = p.matcher(psw);
        if(m.matches())
        {
        	pflag=1;
        }
        else
        {
        	out.print("\nInvalid password");
        }
        
        if(uflag==1 && eflag==1 && pflag==1)
			try {
				Insertdata(name,email,psw,out,res);
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
}
