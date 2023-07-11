
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link rel="stylesheet" href="css/utils.css">
    	<link rel="stylesheet" href="css/style.css">
    	<link rel="stylesheet" href="css/mobile.css">
    	<script src="js/index.js"></script>
    	
    <title>WeBlog - Heaven for bloggers</title>
	</head>
	<body>
		<nav class="navigation max-width-1 m-auto">
        <div class="nav-left">
            <a href="/">
                <span><img src="img/logo.png" width="94px" alt=""></span>
            </a>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="Login.jsp">Login</a></li>
                <li><a href="Signup.html">Signup</a></li>
                <li><a href="Contact.jsp">Contact</a></li>
            </ul>
        </div>
        <div class="nav-right">
            <form name="myForm">
                <input class="form-input" type="text"  id="Search" name="query" placeholder="Article Search">
                <button class="btn" onclick="search();">Search</button>
            </form>
        </div>

    </nav>
    
    <div class="max-width-1 m-auto">
        <hr>
    </div>
    <div class="m-auto content max-width-1 my-2">
    
        <div class="content-left">
            <h1>The heaven for bloggers</h1>
            <p>WeBlog is a website which lets you submit an article which upon approval will be up on our website and you
                can get a good amount of reach from here!</p>
            <p>Using WeBlog will allow to read and Write Blog of different 
            Topic such as Life Style, Food, Travel. Other than this WeBlog provides you a 
            Option to initiate a live chat.
            So get ready and start blogging today!
            </p>
            
        </div>
        <div class="content-right">
            <img src="img/logo.png" alt="iBlog">
        </div>
    </div>
    
    <div class="content-right">
        <div class="form-box">
        <hr>
            <br>
            <a href="Login.jsp"><input type="button" value="Login" class="btn btn-primary"></input></a>
            <br>
            <br>
            <hr>
            <br>
            <a href="Signup.html"><input type="button" value="Signup" class="btn btn-primary"></input><br></a>
            <br>
            <br>
        </div>
    </div>
    
    <div class="footer">
        <p>Omkar Dehankar MCA 1st year </p><br>
        <p>Vaishnavi Panchariya MCA 1st year </p>
    </div>
	</body>
</html>