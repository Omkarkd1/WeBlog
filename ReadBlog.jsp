<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/utils.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mobile.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/
    4.0.0/css/bootstrap.min.css">
<title>WeBlog - Heaven for bloggers</title>
</head>
<body>
	
	<nav class="navigation max-width-1 m-auto">
        <div class="nav-left">
            <a href="/">
                <span><img src="img/logo.png" width="94px" alt=""></span>
            </a>
            <ul>   
                <li><a href="LiveEvents.jsp">Live</a></li>
                <li><a href="StartLive.jsp">Arrange Live</a></li>
                <li><a href="Blogpost.jsp">Blog</a></li>
                <li><a href="Contact.jsp">Contact</a></li>
            </ul>
        </div>
        <div class="nav-right">
            <form action="/search.html" method="get">
                <input class="form-input" type="text" name="query" placeholder="Article Search">
                <button class="btn">Search</button>
            </form>
        </div>
    </nav>
    <div class="max-width-1 m-auto">
        <hr>
    </div>
    
        	<%
        	Class.forName("com.mysql.jdbc.Driver");
    		Connection conn;
    		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/weblog","root","");
    		PreparedStatement ps=conn.prepareStatement("SELECT Name,Blog_title,Blog_type,Blog,BlogTime FROM blog ORDER BY BlogTime DESC;");
    		ResultSet rs=ps.executeQuery();
    		while(rs.next())
    		{
    			out.println("<div class='m-auto content max-width-1 my-2'>");
    			out.println("<div class='content-left'>");
    			out.println("<h1>"+rs.getString("Blog_title")+"</h1>");
    			out.println("<h3>Blog Type :- "+rs.getString("Blog_type")+"</h3>");
    			out.println("<h3>By "+rs.getString("Name")+",</h3>" );
    			out.println("<p>"+rs.getString("BlogTime")+"</p>" );
    			out.println("<p>"+rs.getString("Blog")+"</p></div>" );
    			String style=rs.getString("Blog_type");
    			String p="";
    			if(style.equals("Food"))
    			{
    				p="Food.jpg";
    			}
    			else if(style.equals("Travel"))
    			{
    				p="Travel.jpg";
    			}
    			else
    			{
    				p="lifestyle.jpg";
    			}
    			out.println("<div class='content-right'><img src='img/"+p+"' alt='iBlog'></div></div></div>");
    		}
        	%>
        	
        	<div class="content-right">
        	<div class="form-box">
        	<form action="logout" method="post">
        	<input type="submit" value="Logout" class="btn"></input><br></a>
        	</form><br></div></div>
        	<div class="footer">
        <p>Omkar Dehankar MCA 1st year </p><br>
        <p>Vaishnavi Panchriya MCA 1st year </p>
    </div>
	   
</body>
</html>