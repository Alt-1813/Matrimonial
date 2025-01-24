<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<h1>Search for Matches</h1>
<p>Filter profiles to find your perfect match.</p>
<form action="searchResults.jsp" method="GET">
    <label>Age Range:</label>
    <input type="number" name="minAge" placeholder="Min Age" required>
    <input type="number" name="maxAge" placeholder="Max Age" required>
    <button type="submit">Search</button>
</form>
