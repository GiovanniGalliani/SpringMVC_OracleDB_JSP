<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<%@include file="/CDN.html"%>
<link href="<c:url value="/resources/style.css"/>" rel="stylesheet">
</head>
<body>
	<%@include file="/nav.html"%>
	<div class="container">

		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Report
					impiegati</li>
			</ol>
		</nav>

		<div class="pb-2 mt-4 mb-2">
			<h3>Report impiegati</h3>
		</div>

		<table class="table table-borderless">
			<thead>
				<tr>

					<th>ID</th>
					<th>Nome</th>
					<th>Cognome</th>
					<th>Stipendio</th>
					<th>Reparto</th>
					<th>Modifica</th>
					<th>Elimina</th>
				</tr>

			</thead>
			<tbody>
			<c:forEach var="imp" items="${lista}">
				<tr>
			<td>${imp.id}</td>
			<td>${imp.nome}</td>
			<td>${imp.cognome}</td>
			<td>${imp.stipendio}</td>
			<td>${imp.reparto}</td>
			<td><button type="button" class="btn btn-warning btn-sm" onclick="window.location.href='modificatemp/${imp.id}'">
			<span class="fa fa-edit"></span>&nbsp;&nbsp; Modifica</button></td>
			<td><button type="button" class="btn btn-danger btn-sm" onclick="window.location.href='cancella/${imp.id}'">
			<span class="fa fa-edit"></span>&nbsp;&nbsp; Elimina</button></td>
			</c:forEach>	
	</tbody>
		</table>
<a class="btn btn-outline-dark btn-lg" role="button" href="impform">Aggiungi un nuovo impiegato</a>


	</div>
	<footer class="footer"><%@include file="/footer.html"%></footer>
</body>
</html>