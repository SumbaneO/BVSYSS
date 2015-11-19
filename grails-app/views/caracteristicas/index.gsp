
<%@ page import="bvsys.Caracteristicas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'caracteristicas.label', default: 'Caracteristicas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-caracteristicas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-caracteristicas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="caracteristicas.criadoPor.label" default="Criado Por" /></th>
					
						<th><g:message code="caracteristicas.alteradoPor.label" default="Alterado Por" /></th>
					
						<g:sortableColumn property="dataAlteracao" title="${message(code: 'caracteristicas.dataAlteracao.label', default: 'Data Alteracao')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'caracteristicas.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'caracteristicas.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="dataCriacao" title="${message(code: 'caracteristicas.dataCriacao.label', default: 'Data Criacao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${caracteristicasInstanceList}" status="i" var="caracteristicasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${caracteristicasInstance.id}">${fieldValue(bean: caracteristicasInstance, field: "criadoPor")}</g:link></td>
					
						<td>${fieldValue(bean: caracteristicasInstance, field: "alteradoPor")}</td>
					
						<td><g:formatDate date="${caracteristicasInstance.dataAlteracao}" /></td>
					
						<td>${fieldValue(bean: caracteristicasInstance, field: "descricao")}</td>
					
						<td><g:formatBoolean boolean="${caracteristicasInstance.activo}" /></td>
					
						<td><g:formatDate date="${caracteristicasInstance.dataCriacao}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${caracteristicasInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
