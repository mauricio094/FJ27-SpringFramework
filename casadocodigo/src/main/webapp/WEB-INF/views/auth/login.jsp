<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="cdc"%>
<cdc:page title="Login">
	<h3>Efetue o Login</h3>
	<form:form servletRelativeAction="/login">
		<table>
			<tr>
				<td>Login:</td>
				<td><input type='text' name='username' value='' /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="Logar" /></td>
			</tr>
		</table>
	</form:form>
</cdc:page>
