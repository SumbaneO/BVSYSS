
<%@ page import="bvsys.EstadoEmprestimo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estadoEmprestimo.label', default: 'EstadoEmprestimo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estadoEmprestimo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estadoEmprestimo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="estadoEmprestimo.criadoPor.label" default="Criado Por" /></th>
					
						<th><g:message code="estadoEmprestimo.alteradoPor.label" default="Alterado Por" /></th>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'estadoEmprestimo.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'estadoEmprestimo.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="observacoes" title="${message(code: 'estadoEmprestimo.observacoes.label', default: 'Observacoes')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'estadoEmprestimo.activo.label', default: 'Activo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estadoEmprestimoInstanceList}" status="i" var="estadoEmprestimoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estadoEmprestimoInstance.id}">${fieldValue(bean: estadoEmprestimoInstance, field: "criadoPor")}</g:link></td>
					
						<td>${fieldValue(bean: estadoEmprestimoInstance, field: "alteradoPor")}</td>
					
						<td><g:formatDate date="${estadoEmprestimoInstance.dataAlteracao}" /></td>
					
						<td>${fieldValue(bean: estadoEmprestimoInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: estadoEmprestimoInstance, field: "observacoes")}</td>
					
						<td><g:formatBoolean boolean="${estadoEmprestimoInstance.activo}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estadoEmprestimoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
