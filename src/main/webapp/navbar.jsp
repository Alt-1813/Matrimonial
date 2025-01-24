<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
    
    String loggedInUser = (String) session.getAttribute("John Doe");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Navigation Bar</title>
</head>
<body>
    <header>
        <div class="navbar">
            <div class="logo">
                <img src="images/logo.png" alt="Matrimonial Logo">
            </div>
            <nav>
                <ul class="nav-links">
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="search.jsp">Search</a></li>
                    <% if (loggedInUser != null) { %>
                        <li><a href="logout.jsp">Logout</a></li>
                        <li><span>Welcome, <%= loggedInUser %></span></li>
                    <% } else { %>
                        <li><a href="signup.jsp">Sign Up</a></li>
                        <li><a href="login.jsp">Login</a></li>
                    <% } %>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>
            </nav>
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>
    </header>
    <script>
        
        document.querySelector('.hamburger').addEventListener('click', () => {
            document.querySelector('.nav-links').classList.toggle('active');
        });
    </script>
</body>
</html>