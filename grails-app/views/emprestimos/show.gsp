
<%@ page import="bvsys.Emprestimos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'emprestimos.label', default: 'Emprestimos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-emprestimos" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-emprestimos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list emprestimos">
			
				<g:if test="${emprestimosInstance?.codigo}">
				<li class="fieldcontain">
					<span id="codigo-label" class="property-label"><g:message code="emprestimos.codigo.label" default="Codigo" /></span>
					
						<span class="property-value" aria-labelledby="codigo-label"><g:fieldValue bean="${emprestimosInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emprestimosInstance?.quantidade}">
				<li class="fieldcontain">
					<span id="quantidade-label" class="property-label"><g:message code="emprestimos.quantidade.label" default="Quantidade" /></span>
					
						<span class="property-value" aria-labelledby="quantidade-label"><g:fieldValue bean="${emprestimosInstance}" field="quantidade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emprestimosInstance?.observacoes}">
				<li class="fieldcontain">
					<span id="observacoes-label" class="property-label"><g:message code="emprestimos.observacoes.label" default="Observacoes" /></span>
					
						<span class="property-value" aria-labelledby="observacoes-label"><g:fieldValue bean="${emprestimosInstance}" field="observacoes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${emprestimosInstance?.dataDeDevolucao}">
				<li class="fieldcontain">
					<span id="dataDeDevolucao-label" class="property-label"><g:message code="emprestimos.dataDeDevolucao.label" default="Data De Devolucao" /></span>
					
						<span class="property-value" aria-labelledby="dataDeDevolucao-label"><g:formatDate date="${emprestimosInstance?.dataDeDevolucao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${emprestimosInstance?.datadeObtencao}">
				<li class="fieldcontain">
					<span id="datadeObtencao-label" class="property-label"><g:message code="emprestimos.datadeObtencao.label" default="Datade Obtencao" /></span>
					
						<span class="property-value" aria-labelledby="datadeObtencao-label"><g:formatDate date="${emprestimosInstance?.datadeObtencao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${emprestimosInstance?.detalheEmprestimo}">
				<li class="fieldcontain">
					<span id="detalheEmprestimo-label" class="property-label"><g:message code="emprestimos.detalheEmprestimo.label" default="Detalhe Emprestimo" /></span>
					
						<g:each in="${emprestimosInstance.detalheEmprestimo}" var="d">
						<span class="property-value" aria-labelledby="detalheEmprestimo-label"><g:link controller="detalheEmprestimo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${emprestimosInstance?.estadoEmprestimo}">
				<li class="fieldcontain">
					<span id="estadoEmprestimo-label" class="property-label"><g:message code="emprestimos.estadoEmprestimo.label" default="Estado Emprestimo" /></span>
					
						<g:each in="${emprestimosInstance.estadoEmprestimo}" var="e">
						<span class="property-value" aria-labelledby="estadoEmprestimo-label"><g:link controller="estadoEmprestimo" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${emprestimosInstance?.livros}">
				<li class="fieldcontain">
					<span id="livros-label" class="property-label"><g:message code="emprestimos.livros.label" default="Livros" /></span>
					
						<span class="property-value" aria-labelledby="livros-label"><g:link controller="livros" action="show" id="${emprestimosInstance?.livros?.id}">${emprestimosInstance?.livros?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${emprestimosInstance?.utentes}">
				<li class="fieldcontain">
					<span id="utentes-label" class="property-label"><g:message code="emprestimos.utentes.label" default="Utentes" /></span>
					
						<span class="property-value" aria-labelledby="utentes-label"><g:link controller="utentes" action="show" id="${emprestimosInstance?.utentes?.id}">${emprestimosInstance?.utentes?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:emprestimosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${emprestimosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
