<%@page import="java.util.Date"%>
<%@ page language="java" %>
<%
String myParameter = request.getParameter("param");
Date now = new Date();
%>
<html>
<head>
	<title>Hello World</title>
</head>
<body>
<h1>Hello World ! </h1>
<p>Valeur du param�tre : <%=myParameter %></p>
<p>Date de requ�te : <%=now %></p>
</body>
</html>