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
<p>Valeur du paramètre : <%=myParameter %></p>
<p>Date de requête : <%=now %></p>
</body>
</html>