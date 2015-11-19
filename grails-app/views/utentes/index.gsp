
<%@ page import="bvsys.Utentes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utentes.label', default: 'Utentes')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-utentes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-utentes" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="utentes.criadoPor.label" default="Criado Por" /></th>
					
						<th><g:message code="utentes.alteradoPor.label" default="Alterado Por" /></th>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'utentes.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'utentes.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="apelido" title="${message(code: 'utentes.apelido.label', default: 'Apelido')}" />
					
						<g:sortableColumn property="bi" title="${message(code: 'utentes.bi.label', default: 'Bi')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${utentesInstanceList}" status="i" var="utentesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${utentesInstance.id}">${fieldValue(bean: utentesInstance, field: "criadoPor")}</g:link></td>
					
						<td>${fieldValue(bean: utentesInstance, field: "alteradoPor")}</td>
					
						<td><g:formatDate date="${utentesInstance.dataAlteracao}" /></td>
					
						<td>${fieldValue(bean: utentesInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: utentesInstance, field: "apelido")}</td>
					
						<td>${fieldValue(bean: utentesInstance, field: "bi")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${utentesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
