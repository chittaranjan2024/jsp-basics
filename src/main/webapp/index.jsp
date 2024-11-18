<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Scanner" errorPage="error.jsp" isErrorPage="false" 
    session="true" buffer="20kb" autoFlush="true"
    %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%@ include file="header.jsp" %>
 <h2>This is the home page</h2>
</body>
<%
 out.print(session.getAttribute("loginStatus"));
%>

<%
 pageContext.setAttribute("user", "Guvi",PageContext.APPLICATION_SCOPE);
 out.print(pageContext.getAttribute("user"));
%>

</html>