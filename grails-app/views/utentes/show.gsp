
<%@ page import="bvsys.Utentes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utentes.label', default: 'Utentes')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-utentes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-utentes" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list utentes">
			
				<g:if test="${utentesInstance?.criadoPor}">
				<li class="fieldcontain">
					<span id="criadoPor-label" class="property-label"><g:message code="utentes.criadoPor.label" default="Criado Por" /></span>
					
						<span class="property-value" aria-labelledby="criadoPor-label"><g:link controller="utilizador" action="show" id="${utentesInstance?.criadoPor?.id}">${utentesInstance?.criadoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.alteradoPor}">
				<li class="fieldcontain">
					<span id="alteradoPor-label" class="property-label"><g:message code="utentes.alteradoPor.label" default="Alterado Por" /></span>
					
						<span class="property-value" aria-labelledby="alteradoPor-label"><g:link controller="utilizador" action="show" id="${utentesInstance?.alteradoPor?.id}">${utentesInstance?.alteradoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="utentes.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${utentesInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="utentes.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${utentesInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.apelido}">
				<li class="fieldcontain">
					<span id="apelido-label" class="property-label"><g:message code="utentes.apelido.label" default="Apelido" /></span>
					
						<span class="property-value" aria-labelledby="apelido-label"><g:fieldValue bean="${utentesInstance}" field="apelido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.bi}">
				<li class="fieldcontain">
					<span id="bi-label" class="property-label"><g:message code="utentes.bi.label" default="Bi" /></span>
					
						<span class="property-value" aria-labelledby="bi-label"><g:fieldValue bean="${utentesInstance}" field="bi"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.distrito}">
				<li class="fieldcontain">
					<span id="distrito-label" class="property-label"><g:message code="utentes.distrito.label" default="Distrito" /></span>
					
						<span class="property-value" aria-labelledby="distrito-label"><g:fieldValue bean="${utentesInstance}" field="distrito"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="utentes.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${utentesInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="utentes.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${utentesInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.nuit}">
				<li class="fieldcontain">
					<span id="nuit-label" class="property-label"><g:message code="utentes.nuit.label" default="Nuit" /></span>
					
						<span class="property-value" aria-labelledby="nuit-label"><g:fieldValue bean="${utentesInstance}" field="nuit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="utentes.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${utentesInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="utentes.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${utentesInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="utentes.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${utentesInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.emprestimos}">
				<li class="fieldcontain">
					<span id="emprestimos-label" class="property-label"><g:message code="utentes.emprestimos.label" default="Emprestimos" /></span>
					
						<g:each in="${utentesInstance.emprestimos}" var="e">
						<span class="property-value" aria-labelledby="emprestimos-label"><g:link controller="emprestimos" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${utentesInstance?.utilizador}">
				<li class="fieldcontain">
					<span id="utilizador-label" class="property-label"><g:message code="utentes.utilizador.label" default="Utilizador" /></span>
					
						<span class="property-value" aria-labelledby="utilizador-label"><g:link controller="utilizador" action="show" id="${utentesInstance?.utilizador?.id}">${utentesInstance?.utilizador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:utentesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${utentesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
