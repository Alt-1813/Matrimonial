<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<h1>Contact Us</h1>
<p>We are here to help you. Reach out to us anytime!</p>
<form action="sendMessage" method="POST">
    <label>Name:</label>
    <input type="text" name="name" required>
    <label>Email:</label>
    <input type="email" name="email" required>
    <label>Message:</label>
    <textarea name="message" required></textarea>
    <button type="submit">Send</button>
</form>
