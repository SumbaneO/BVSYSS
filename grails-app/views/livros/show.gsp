
<%@ page import="bvsys.Livros" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'livros.label', default: 'Livros')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-livros" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-livros" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list livros">
			
				<g:if test="${livrosInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="livros.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${livrosInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${livrosInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="livros.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${livrosInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${livrosInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="livros.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${livrosInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${livrosInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="livros.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${livrosInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${livrosInstance?.autores}">
				<li class="fieldcontain">
					<span id="autores-label" class="property-label"><g:message code="livros.autores.label" default="Autores" /></span>
					
						<span class="property-value" aria-labelledby="autores-label"><g:fieldValue bean="${livrosInstance}" field="autores"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${livrosInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="livros.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${livrosInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${livrosInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="livros.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${livrosInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${livrosInstance?.caracteristicas}">
				<li class="fieldcontain">
					<span id="caracteristicas-label" class="property-label"><g:message code="livros.caracteristicas.label" default="Caracteristicas" /></span>
					
						<g:each in="${livrosInstance.caracteristicas}" var="c">
						<span class="property-value" aria-labelledby="caracteristicas-label"><g:link controller="caracteristicas" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${livrosInstance?.emprestimos}">
				<li class="fieldcontain">
					<span id="emprestimos-label" class="property-label"><g:message code="livros.emprestimos.label" default="Emprestimos" /></span>
					
						<g:each in="${livrosInstance.emprestimos}" var="e">
						<span class="property-value" aria-labelledby="emprestimos-label"><g:link controller="emprestimos" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:livrosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${livrosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
