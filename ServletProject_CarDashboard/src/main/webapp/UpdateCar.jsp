<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
ResultSet rs=(ResultSet) request.getAttribute("resultSet");
rs.next();
%>

<h1>UPDATE CAR</h1>

<form action="save-updated-car" method="post">
<input type="number" value="<%=rs.getInt(1)%>" name="carId" readonly="readonly"> <br>
<input type="text"  value="<%=rs.getString(2)%>" name="carName"> <br>
<input type="text" value="<%=rs.getString(3)%>"name="carModel"> <br>
<input type="text"  value="<%=rs.getString(4)%>" name="carColor"> <br>
<input type="number" value="<%=rs.getInt(5)%>"name="carPrice"> <br>
<input type="submit" value="UPDATE">
</form>
</body>
</html>