<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
</head>
<body>
  <h2>Something Went Wrong!!!</h2>
  <p>Please try after sometime</p>
  <p><%= exception.getMessage() %></p>
</body>
</html>