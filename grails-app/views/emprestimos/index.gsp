
<%@ page import="bvsys.Emprestimos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emprestimos.label', default: 'Emprestimos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-emprestimos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-emprestimos" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="codigo" title="${message(code: 'emprestimos.codigo.label', default: 'Codigo')}" />
					
						<g:sortableColumn property="quantidade" title="${message(code: 'emprestimos.quantidade.label', default: 'Quantidade')}" />
					
						<g:sortableColumn property="observacoes" title="${message(code: 'emprestimos.observacoes.label', default: 'Observacoes')}" />
					
						<g:sortableColumn property="dataDeDevolucao" title="${message(code: 'emprestimos.dataDeDevolucao.label', default: 'Data De Devolucao')}" />
					
						<g:sortableColumn property="datadeObtencao" title="${message(code: 'emprestimos.datadeObtencao.label', default: 'Datade Obtencao')}" />
					
						<th><g:message code="emprestimos.livros.label" default="Livros" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${emprestimosInstanceList}" status="i" var="emprestimosInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${emprestimosInstance.id}">${fieldValue(bean: emprestimosInstance, field: "codigo")}</g:link></td>
					
						<td>${fieldValue(bean: emprestimosInstance, field: "quantidade")}</td>
					
						<td>${fieldValue(bean: emprestimosInstance, field: "observacoes")}</td>
					
						<td><g:formatDate date="${emprestimosInstance.dataDeDevolucao}" /></td>
					
						<td><g:formatDate date="${emprestimosInstance.datadeObtencao}" /></td>
					
						<td>${fieldValue(bean: emprestimosInstance, field: "livros")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${emprestimosInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
