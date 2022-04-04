<%@page import="org.tutorial.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
List<Book> listBooks = (List<Book>)request.getAttribute("listBooks");
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application Web</title>
</head>
<body>
<h1>Accueil de l'application</h1>
<form action="MainServlet" method="post">
Recherche par titre commençant par : <input type="text" name="searchText">
<input type="submit">
</form>

<p>Liste des livres : </p>

<%
if (listBooks.size()==0) {
%>
<p>Aucun résultat </p>
<% } else { %>
<table border="1">
<tr>
	<th>Titre</th>
	<th>Auteur</th>
</tr>
<%
for (Book book : listBooks) {
	String title = book.getTitle();
	String author = book.getAuthor();
%>
<tr>
	<td><%=title %></td>
	<td><%=author %></td>
</tr>
<%
}
%>
</table>
<%} %>

<p>Historique de recherche </p>
<ul>
<%
List<String> searchHistory = (List<String>)session.getAttribute("SearchHistory");
if (searchHistory !=null) {
	for (String historyEntry : searchHistory) { 
%>
<li><%=historyEntry %></li>
<%		
	}
}
%>
</ul>
</body>
</html>