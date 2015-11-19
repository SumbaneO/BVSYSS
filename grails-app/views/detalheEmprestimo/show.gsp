
<%@ page import="bvsys.DetalheEmprestimo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detalheEmprestimo.label', default: 'DetalheEmprestimo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-detalheEmprestimo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-detalheEmprestimo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list detalheEmprestimo">
			
				<g:if test="${detalheEmprestimoInstance?.emprestimos}">
				<li class="fieldcontain">
					<span id="emprestimos-label" class="property-label"><g:message code="detalheEmprestimo.emprestimos.label" default="Emprestimos" /></span>
					
						<span class="property-value" aria-labelledby="emprestimos-label"><g:link controller="emprestimos" action="show" id="${detalheEmprestimoInstance?.emprestimos?.id}">${detalheEmprestimoInstance?.emprestimos?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${detalheEmprestimoInstance?.opcao}">
				<li class="fieldcontain">
					<span id="opcao-label" class="property-label"><g:message code="detalheEmprestimo.opcao.label" default="Opcao" /></span>
					
						<span class="property-value" aria-labelledby="opcao-label"><g:link controller="opcao" action="show" id="${detalheEmprestimoInstance?.opcao?.id}">${detalheEmprestimoInstance?.opcao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:detalheEmprestimoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${detalheEmprestimoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
