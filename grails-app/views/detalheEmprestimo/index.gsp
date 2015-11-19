
<%@ page import="bvsys.DetalheEmprestimo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detalheEmprestimo.label', default: 'DetalheEmprestimo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-detalheEmprestimo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-detalheEmprestimo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="detalheEmprestimo.emprestimos.label" default="Emprestimos" /></th>
					
						<th><g:message code="detalheEmprestimo.opcao.label" default="Opcao" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${detalheEmprestimoInstanceList}" status="i" var="detalheEmprestimoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${detalheEmprestimoInstance.id}">${fieldValue(bean: detalheEmprestimoInstance, field: "emprestimos")}</g:link></td>
					
						<td>${fieldValue(bean: detalheEmprestimoInstance, field: "opcao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${detalheEmprestimoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
