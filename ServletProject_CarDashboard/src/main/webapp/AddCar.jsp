<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Enter Car Details</h1>
<form action="add-car" method="post">
<input type="number" placeholder="Enter CarId" name="carId"> <br>
<input type="text" placeholder="Enter CarName" name="carName"> <br>
<input type="text" placeholder="Enter CarModel" name="carModel"> <br>
<input type="text" placeholder="Enter CarColor" name="carColor"> <br>
<input type="number" placeholder="Enter CarPrice" name="carPrice"> <br>

<input type="submit" value="ADD">

</form>

</body>
</html>