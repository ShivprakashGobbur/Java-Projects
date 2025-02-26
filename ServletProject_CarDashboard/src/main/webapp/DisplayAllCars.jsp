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
%>
<h1>Display All Cars</h1>

<table border="">
<tr>
<th>CarId</th>
<th>CarName</th>
<th>CarModel</th>
<th>Carcolor</th>
<th>CarPrice</th>
<th>Update</th>
<th>Delete</th>
</tr>

<%
while(rs.next()) {
%>

<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getInt(5)%></td>
<td><a href="find-car-by-id?carId=<%=rs.getInt(1)%>">UPDATE</a></td>
<td><a href="delete-car-by-id?carId=<%=rs.getInt(1)%>">DELETE</a></td>
</tr>

<% } %>
</table>
<a href="index.jsp">Go Back To Dashboard</a>
</body>
</html>