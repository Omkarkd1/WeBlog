<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8">
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
                <li><a href="index.jsp">Home</a></li>
                   
                <li><a href="LiveEvents.jsp">Live</a></li>
                <li><a href="ReadBlog.jsp">ReadBlog</a></li>
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
        <div class="max-width-1 m-auto mx-1">
    	<form action=blog method="post">
    		<br>
            <h2>Express your thought's in the form of Blog</h2>
            <div class="contact-form">
                <div class="form-box">
                <br>
                    <input type="text" placeholder="Blog Title" name="Blogtitle" id="Blogtitle" required class="form-control">
                    <h5 id="Titlecheck" style="color: red;">**Blog Title is missing</h5>
                </div>
                <div class="form-box">
                <br>
                 <label for="cars">Select Blogtype : </label>
					<select name="Blogtype" id="Blogtype" class="btn" required class="form-control">
  					<option value="Travel">Travel</option>
  					<option value="Food">Food</option>
  					<option value="Lifestyle">Lifestyle</option>
					</select>
				<div class="form-box">
				<br>
                    <textarea name="Blog" id="Blog" cols="30" rows="5" placeholder="Blog" required class="form-control"></textarea>
                	<h5 id="Blogcheck" style="color: red;">**Blog is missing</h5>
                <br>
                </div>
                <div class="form-box">
                	<br>
                    <input type="submit" value="Submit" id="submitbtn" class="btn btn-primary"></input>
               		<br><br>
                </div>
			</form>
			
        	<div class="content-right">
        	<div class="form-box">
        	<form action="logout" method="post">
        	<input type="submit" value="Logout" class="btn"></input><br></a>
        	</form><br></div></div>
            </div>
        </div>
        
		</div>
		
    </div>
    <div class="footer">
        <p>Omkar Dehankar MCA 1st year </p><br>
        <p>Vaishnavi Panchriya MCA 1st year </p>
    </div>
    <script src="js/blogpost.js"></script>
</body>
</html>