<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/utils.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/contact.css">
    <link rel="stylesheet" href="css/mobile.css">
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
            <h2>Feel Free to Contact Us</h2>
            <div class="contact-form">
                <div class="form-box">
                    <input type="text" placeholder="Enter Your Name">
                </div>
                <div class="form-box">
                    <input type="text" placeholder="Enter Your Phone Number">
                </div>
                <div class="form-box">
                    <input type="text" placeholder="Enter Your Email Id">
                </div>
                
                <div class="form-box">
                    <textarea name="" id="" cols="30" rows="5" placeholder="How may we help you?"></textarea>
                <br>
                </div>
                <div class="form-box">
                	<br><br>
                    <a href="index.jsp"><button class="btn">Submit</button>
                </div>

            </div>
        </div>

    </div>
    <div class="footer">
        <p>Omkar Dehankar MCA 1st year </p><br>
        <p>Vaishnavi Panchriya MCA 1st year </p>
    </div>
</body>
</html>