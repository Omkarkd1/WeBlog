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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
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
                <li><a href="Live.jsp">Live</a></li>
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
			PreparedStatement ps=conn.prepareStatement("SELECT EventTitle,EventDate,StartTime,EndTime FROM liveevent");
			ResultSet rs=ps.executeQuery();
			if(!rs.next())
			{
				out.println("<div class='m-auto content max-width-1 my-2'>");
				out.println("<div class='content-left'>");
				out.println("<h1>"+"No Live Events Schaduled<br><br><br>"+"</h1></div></div>");
			}
			else
			{
				int i=0;
				int j=1;
				while(rs.next())
				{
					out.println("<div class='m-auto content max-width-1 my-2'>");
	    			out.println("<div class='content-left'>");
	    			out.println("<h1>Event Title :- "+rs.getString("EventTitle")+"</h1>");
	    			out.println("<h3>Date : - "+rs.getString("EventDate")+"</h3>");
	    			out.println("<h3>Start Time :- "+rs.getString("StartTime")+",</h3>" );
	    			out.println("<h3>End Time :- "+rs.getString("EndTime")+"</h3></div>" );
	    			out.println("<div class='content-right'><img src='img/logo.png' alt='iBlog'></div></div></div><hr>");
				}
			}
        	%>
        	
        	</div>
        	<div class="content-right">
        	<div class="form-box">
        	<form action="logout" method="post">
        	<input type="submit" value="Logout" class="btn"></input><br></a>
        	</form><br></div></div>
        	</div></div>
    <div class="footer">
        <p>Omkar Dehankar MCA 1st year </p>
        <br>
        <p>Vaishnavi Panchriya MCA 1st year </p>
    </div>
	   
</body>
</html>