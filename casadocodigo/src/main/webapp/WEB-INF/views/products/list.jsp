<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="cdc"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<cdc:page title="Listagem de Produtos">
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="principal" var="user" />
		<spring:message code="users.welcome" arguments="${user.name}"/>
	</sec:authorize>
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<c:url value="/products/form" var="formLink" />
		<a href="${formLink}"> Cadastrar novo produto </a>
	</sec:authorize>
	<table>
		<tr>
			<th>Titulos</th>
			<th>Valores</th>
			<th>Detalhes</th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td>${product.title}</td>
				<td><c:forEach items="${product.prices}" var="price">
					[${price.value} - ${price.bookType}]
					</c:forEach></td>
				<td><c:url value="/products/${product.id}" var="linkDetalhar" /><a
					href="${linkDetalhar}">Detalhar</a></td>
			</tr>
		</c:forEach>
	</table>
</cdc:page>