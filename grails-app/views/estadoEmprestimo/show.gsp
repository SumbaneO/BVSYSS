
<%@ page import="bvsys.EstadoEmprestimo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estadoEmprestimo.label', default: 'EstadoEmprestimo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-estadoEmprestimo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-estadoEmprestimo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list estadoEmprestimo">
			
				<g:if test="${estadoEmprestimoInstance?.criadoPor}">
				<li class="fieldcontain">
					<span id="criadoPor-label" class="property-label"><g:message code="estadoEmprestimo.criadoPor.label" default="Criado Por" /></span>
					
						<span class="property-value" aria-labelledby="criadoPor-label"><g:link controller="utilizador" action="show" id="${estadoEmprestimoInstance?.criadoPor?.id}">${estadoEmprestimoInstance?.criadoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoEmprestimoInstance?.alteradoPor}">
				<li class="fieldcontain">
					<span id="alteradoPor-label" class="property-label"><g:message code="estadoEmprestimo.alteradoPor.label" default="Alterado Por" /></span>
					
						<span class="property-value" aria-labelledby="alteradoPor-label"><g:link controller="utilizador" action="show" id="${estadoEmprestimoInstance?.alteradoPor?.id}">${estadoEmprestimoInstance?.alteradoPor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoEmprestimoInstance?.dataAlteracao}">
				<li class="fieldcontain">
					<span id="dataAlteracao-label" class="property-label"><g:message code="estadoEmprestimo.dataAlteracao.label" default="Data Alteracao" /></span>
					
						<span class="property-value" aria-labelledby="dataAlteracao-label"><g:formatDate date="${estadoEmprestimoInstance?.dataAlteracao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoEmprestimoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="estadoEmprestimo.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${estadoEmprestimoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoEmprestimoInstance?.observacoes}">
				<li class="fieldcontain">
					<span id="observacoes-label" class="property-label"><g:message code="estadoEmprestimo.observacoes.label" default="Observacoes" /></span>
					
						<span class="property-value" aria-labelledby="observacoes-label"><g:fieldValue bean="${estadoEmprestimoInstance}" field="observacoes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoEmprestimoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="estadoEmprestimo.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${estadoEmprestimoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoEmprestimoInstance?.dataCriacao}">
				<li class="fieldcontain">
					<span id="dataCriacao-label" class="property-label"><g:message code="estadoEmprestimo.dataCriacao.label" default="Data Criacao" /></span>
					
						<span class="property-value" aria-labelledby="dataCriacao-label"><g:formatDate date="${estadoEmprestimoInstance?.dataCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estadoEmprestimoInstance?.emprestimos}">
				<li class="fieldcontain">
					<span id="emprestimos-label" class="property-label"><g:message code="estadoEmprestimo.emprestimos.label" default="Emprestimos" /></span>
					
						<span class="property-value" aria-labelledby="emprestimos-label"><g:link controller="emprestimos" action="show" id="${estadoEmprestimoInstance?.emprestimos?.id}">${estadoEmprestimoInstance?.emprestimos?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:estadoEmprestimoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${estadoEmprestimoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
