<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

	<meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/utils.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mobile.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/
    4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
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
    
    <div class="contact-content font1 max-width-1 m-auto">
        <div class="max-width-1 m-auto">
        <div class="content-left">
        <div class="contact-content font1 max-width-1 m-auto">
            <div class="max-width-1 m-auto mx-1">
                <h2>Start live chat</h2>
                <div class="contact-form">
                <form action=live>
                	<div class="form-box">
                    <input type="text" name="title" placeholder="Set chat room title" id="title" required class="form-control">
                    <h5 id="Titlecheck" style="color: red;">
                        **Please Fill the Title
                    </h5>
                    </div>
                    Start time : <input type="date" name="date" id="date" required class="form-control">
                    <br>
                    Start time : <input type="time" name="stime" id="stime" required class="form-control">
                    <br>
                    End Time  : <input type="time" name="etime" id="etime" required class="form-control">
                    <div class="form-box">
                    <input type="password" name="pass" placeholder="Set Password for char room" id="password" required class="form-control">
                    <h5 id="passcheck" style="color: red;">
                        **Please Fill the password
                    </h5>
                    </div>
                    <div class="form-box">
                    <input type="password" name="username" placeholder="Confirm Password"id="conpassword" class="form-control">
                    <h5 id="conpasscheck" style="color: red;">
                        **Password didn't match
                    </h5>
                    </div>
                    
                    <div class="form-box">
                        <br>
                        <input type="submit" id="submitbtn" value="Submit" class="btn btn-primary">
            			</form>
                        <br>
                        <br>
					</form>
                    </div>
                </div>
            </div> 
    </div></div>
    
        	<div class="content-right">
        	<div class="form-box">
        	<form action="logout" method="post">
        	<input type="submit" value="Logout" class="btn"></input><br></a>
        	</form><br></div></div>
    </div>
    </div>
    <div class="footer">
        <p>Omkar Dehankar MCA 1st year </p>
        <br>
        <p>Vaishnavi Panchriya MCA 1st year </p>
    </div>
    <script src="js/live.js"></script> 
</body>
</html>