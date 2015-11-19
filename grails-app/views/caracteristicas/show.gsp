
<%@ page import="bvsys.Caracteristicas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'caracteristicas.label', default: 'Caracteristicas')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-caracteristicas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-caracteristicas" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list caracteristicas">
			
				<g:if test="${caracteristicasInstance?.criadoPor}">
				<li class="fieldcontain">
					<span id="criadoPor-label" class="property-label"><g:message code="caracteristicas.criadoPor.label" default="Criado Por" /></span>
					
						<span class="property-value" aria-labelledby="criadoPor-label"><g:link controller="utilizador" action="show" id="${caracteristicasInstance?.criadoPor?.id}">${caracteristicasInstance?.criadoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${caracteristicasInstance?.alteradoPor}">
				<li class="fieldcontain">
					<span id="alteradoPor-label" class="property-label"><g:message code="caracteristicas.alteradoPor.label" default="Alterado Por" /></span>
					
						<span class="property-value" aria-labelledby="alteradoPor-label"><g:link controller="utilizador" action="show" id="${caracteristicasInstance?.alteradoPor?.id}">${caracteristicasInstance?.alteradoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${caracteristicasInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="caracteristicas.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${caracteristicasInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${caracteristicasInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="caracteristicas.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${caracteristicasInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caracteristicasInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="caracteristicas.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${caracteristicasInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${caracteristicasInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="caracteristicas.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${caracteristicasInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${caracteristicasInstance?.emprestimo}">
				<li class="fieldcontain">
					<span id="emprestimo-label" class="property-label"><g:message code="caracteristicas.emprestimo.label" default="Emprestimo" /></span>
					
						<span class="property-value" aria-labelledby="emprestimo-label"><g:link controller="emprestimos" action="show" id="${caracteristicasInstance?.emprestimo?.id}">${caracteristicasInstance?.emprestimo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${caracteristicasInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="caracteristicas.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${caracteristicasInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${caracteristicasInstance?.opcoes}">
				<li class="fieldcontain">
					<span id="opcoes-label" class="property-label"><g:message code="caracteristicas.opcoes.label" default="Opcoes" /></span>
					
						<g:each in="${caracteristicasInstance.opcoes}" var="o">
						<span class="property-value" aria-labelledby="opcoes-label"><g:link controller="opcao" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:caracteristicasInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${caracteristicasInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
