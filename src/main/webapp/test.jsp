<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
  response.setContentType("text/html");
  response.setHeader("Custom-Header","This is for testing");
  		  
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h2>This is a test page</h2>
 
 <%
 application.setAttribute("language", "Java");
 application.setAttribute("technology", "JSP");		
 session.setAttribute("loginStatus", "active");
 %>
 <% 
 
 out.print("Welcome to test page"); 
 
 %>
<br>
 
 <%= java.util.Calendar.getInstance().getTime()
		
 %>
<br>
  <%=new String("Hello World").toUpperCase() 
  
  %>
  <br>
  
  <%!
  public String getName()
  {
	  return "Java Server Pages";
  }
  
  public String getLanguage()
  {
	  return "Java";
  }
  %>
  
  <P>Name : <%= getName() %></P>
  <P>Language : <%= getLanguage() %></P>
  
  
  <p> <%= request.getMethod() %></p>
  <p> <%= request.getRequestURI() %></p>
  
  <P><%= config.getServletName()  %></P>
  <%
   out.print(application.getAttribute("language"));
   out.print(application.getAttribute("technology"));
  %>
  
  <%
    this.log("This is a log message");
  %>
  
</body>
</html>