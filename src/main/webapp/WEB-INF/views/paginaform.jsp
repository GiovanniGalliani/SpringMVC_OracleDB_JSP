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
<link href="<c:url value="resources/style.css"/>" rel="stylesheet">
</head>
<body>
<%@include file="/nav.html" %>
<div class="container">

	<nav aria-label="breadcrumb">
		<ol class="breadcrumb">
			<li class="breadcrumb-item">
			<a href="${pageContext.request.contextPath}/index.jsp">Home</a></li>
			<li class="breadcrumb-item active" aria-current="page">Inserimento impiegato</li>
		</ol>
	</nav>
	
	<div class="pb-2 mt-4 mb-2">
		<h3>Inserisci i dati per la registrazione</h3>
	</div>
	
	<form:form action="salva" method="post" modelAttribute="impiegato" class="form-horizontal">		
		<div class="form-group row">
			<label for="nome" class="col-md-1 col-form-label mr-2">
				Nome
			</label>
			<div class="col-md-4">
				<form:input path="nome" class="form-control"/>					
			</div>
			<div class="col-md-6">
				<form:errors path="nome" cssClass="error"/>					
			</div>		
		</div>
		
		<div class="form-group row">
			<label for="cognome" class="col-md-1 col-form-label mr-2">
				Cognome
			</label>
			<div class="col-md-4">
				<form:input path="cognome" class="form-control"/>					
			</div>
			<div class="col-md-6">
				<form:errors path="cognome" cssClass="error"/>					
			</div>		
		</div>
		
		<div class="form-group row">
			<label for="stipendio" class="col-md-1 col-form-label mr-2">
				Stipendio
			</label>
			<div class="col-md-4">
				<form:input path="stipendio" class="form-control"/>					
			</div>
			<div class="col-md-6">
				<form:errors path="stipendio" cssClass="error"/>					
			</div>		
		</div>
		
		<div class="form-group row">
			<label for="reparto" class="col-md-1 col-form-label mr-2">
				Reparto
			</label>
			<div class="col-md-4">
				<form:input path="reparto" class="form-control"/>					
			</div>
			<div class="col-md-6">
				<form:errors path="reparto" cssClass="error"/>					
			</div>		
		</div>
		
		<button type="submit" class="btn btn-outline-dark" style="margin-top: 20px;">
			Registra impiegato
		</button>	
	</form:form>
</div>
<footer class="footer"><%@include file="/footer.html" %></footer>
</body>
</html>