<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="java.sql.*" %>
<%@ page import="io.mountblue.contactus.model.Request" %>
<%@ page import="java.util.List" %>
<%@ page import="io.mountblue.contactus.dao.RequestDao" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Messages</title>
    <style>
        table {
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            padding: 10px;
        }
    </style>
</head>
<body>
	<%
        response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
        if(session.getAttribute("id")==null){
            response.sendRedirect("login");
        }
    %>
    <h1>Active Messages</h1>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
           
            <c:forEach var="request" items="${activeRequests}">
                <tr>
                    <td>${request.getName()}</td>
                    <td>${request.getEmail()}</td>
                    <td>${request.getMessage()}</td>
                    <td>
                        <form action="dashboard" method="post">
                            <input type="hidden" name="requestId" value="${request.getId()}">
							<button type="submit" name="status" value="${request.status}">Change to ${!request.status ? 'active' : 'archive'}</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br>
    
    <h1>Archive Messages</h1>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Message</th>
                <th>Action</th>
            </tr>
        </thead>
        
        <tbody> 
            <c:forEach var="request" items="${archiveRequests}">
                <tr>
                    <td>${request.getName()}</td>
                    <td>${request.getEmail()}</td>
                    <td>${request.getMessage()}</td>
                    <td>
                        <form action="dashboard" method="post">
                            <input type="hidden" name="requestId" value="${request.getId()}">
							<button type="submit" name="status" value="${request.status }">Change to ${!request.status ? 'active' : 'archive'}</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br>

    <form action="logout" method="get" >
    	<button type="submit" name="logout" >logout</button>
    </form>
</body>
</html>
