<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<%@include file="/CDN.html" %>
<link href="<c:url value="/resources/style.css"/>" rel="stylesheet">
</head>
<body>
<%@include file="/nav.html" %>
<div class="container">

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
			<a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
				<li class="breadcrumb-item">
			<a href="${pageContext.request.contextPath}/impreport">Report impiegati</a></li>
			<li class="breadcrumb-item active" aria-current="page">Inserimento impiegato</li>
		</ol>
	</nav>
	
	<div class="pb-2 mt-4 mb-2">
		<h3>Modificare i dati dell'impiegato</h3>
	</div>
	
	<form:form action="${pageContext.request.contextPath}/modifica" method="post">		
		
		<table class="tabel table-borderless">
		<thead>
		<tr>
		<th>Nome</th>
		<th>Cognome</th>
		<th>Stipendio</th>
		<th>Reparto</th>
		</tr>
		</thead>
		<tbody>
			<tr>
			<form:hidden path="id"/>
			<td><form:input path="nome" class="form-control"/></td>
			<td><form:input path="cognome" class="form-control"/></td>
			<td><form:input path="stipendio" class="form-control"/></td>
			<td><form:input path="reparto" class="form-control"/></td>
			</tr>
			<tr>
			<td colspan="4">
			<button type="submit" class="btn btn-outline-dark" style="margin-top: 20px;">
			Registra Impiegato
			</button>
			</td>
			</tr>
		</tbody>
		
		
		
		</table>
		
		
	</form:form>
</div>
<footer class="footer"><%@include file="/footer.html" %></footer>
</body>
</html>