<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="cdc"%>
<cdc:page title="cadastro de produtos">
	<c:url value="/products" var="url" />
	<form:form action="${spring:mvcUrl('PC#save').build()}" method="post"
		commandName="product" enctype="multipart/form-data">
		<div>
			<label for="title">Título</label>
			<form:input path="title" id="title" />
			<form:errors path="title" />
		</div>
		<div>
			<label for="description">Descrição</label>
			<form:textarea path="description" rows="10" cols="20"
				id="description" />
			<form:errors path="description" />
		</div>
		<div>
			<label for="numberOfPages">Número de páginas</label>
			<form:input path="numberOfPages" id="numberOfPages" />
			<form:errors path="numberOfPages" />
		</div>
		<div>
			<c:forEach items="${types}" var="bookType" varStatus="status">
				<div>
					<label for="price_${bookType}">${bookType}</label> <input
						type="text" name="prices[${status.index}].value"
						id="price_${bookType}" /> <input type="hidden"
						name="prices[${status.index}].bookType" value="${bookType}" />
				</div>
			</c:forEach>
		</div>
		<div>
			<label for="releaseDate">Data de Lançamento</label>
			<form:input path="releaseDate" type="date" id="releaseDate" />
			<form:errors path="releaseDate" />
		</div>
		<div>
			<Label for="summary">Sumário</Label> <input type="file"
				name="summary" id="summary" />
			<form:errors path="summaryPath" />
		</div>
		<div>
			<input type="submit" value="Enviar">
		</div>

	</form:form>
</cdc:page>
