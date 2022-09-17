<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<%@include file="CDN.html" %>
<link href="<c:url value="resources/style.css"/>" rel="stylesheet">
</head>
<body>
<%@include file="nav.html" %>
<div class="container">
	<div style="margin-top:50px;"></div>
	
	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
		<li class="breadcrumb-item">
		<a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
		<li class="breadcrumb-item active" aria-current="page"> Pagina di errore</li>
		</ol>
	</nav>
<div class="jumbotron">
<h1 class="display-4">Gestione impiegati</h1>
<p class="lead">Console di amministrazione</p>
<hr>
<a class="btn btn-outline-dark btn-lg" role="button" href="impreport">Report impiegati</a>
</div>

</div>

<footer class="footer"><%@include file="footer.html" %></footer>

</body>
</html>