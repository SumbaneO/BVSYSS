
<%@ page import="bvsys.Livros" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'livros.label', default: 'Livros')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-livros" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-livros" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'livros.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="codigo" title="${message(code: 'livros.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'livros.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'livros.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="autores" title="${message(code: 'livros.autores.label', default: 'Autores')}" />
					
						<g:sortableColumn property="categoria" title="${message(code: 'livros.categoria.label', default: 'Categoria')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${livrosInstanceList}" status="i" var="livrosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${livrosInstance.id}">${fieldValue(bean: livrosInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: livrosInstance, field: "codigo")}</td>
					
						<td>${fieldValue(bean: livrosInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: livrosInstance, field: "titulo")}</td>
					
						<td>${fieldValue(bean: livrosInstance, field: "autores")}</td>
					
						<td>${fieldValue(bean: livrosInstance, field: "categoria")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${livrosInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
