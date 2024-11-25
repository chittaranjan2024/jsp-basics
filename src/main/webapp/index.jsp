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
  <jsp:include page="showtime.jsp"></jsp:include>
 <h2>This is the home page</h2>
</body>
<%
 out.print(session.getAttribute("loginStatus"));
%>

<%
 pageContext.setAttribute("user", "Guvi",PageContext.SESSION_SCOPE);
 out.print(pageContext.getAttribute("user"));
%>

<jsp:useBean id="emp1" class="model.Employee"></jsp:useBean>
<jsp:setProperty property="id" name="emp1" value="101"/>
<jsp:setProperty property="name" name="emp1" value="GUVI"/>

<p>
<jsp:getProperty property="id" name="emp1"/>
<jsp:getProperty property="name" name="emp1"/>
</p>
<% 

out.print(emp1.display()); %>

<jsp:forward page="test.jsp">
   
   <jsp:param value="25/11/2024" name="currentDate"/>
   <jsp:param value="Monday" name="currentDay"/>

</jsp:forward>

</html>