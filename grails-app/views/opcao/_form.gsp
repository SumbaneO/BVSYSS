<%@ page import="bvsys.Opcao" %>



<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="opcao.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${bvsys.Utilizador.list()}" optionKey="id" value="${opcaoInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="opcao.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${bvsys.Utilizador.list()}" optionKey="id" value="${opcaoInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="opcao.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${opcaoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="opcao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${opcaoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="opcao.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${opcaoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="opcao.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${opcaoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'caracteristicas', 'error')} required">
	<label for="caracteristicas">
		<g:message code="opcao.caracteristicas.label" default="Caracteristicas" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="caracteristicas" name="caracteristicas.id" from="${bvsys.Caracteristicas.list()}" optionKey="id" required="" value="${opcaoInstance?.caracteristicas?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="opcao.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${opcaoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'detalhes', 'error')} ">
	<label for="detalhes">
		<g:message code="opcao.detalhes.label" default="Detalhes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${opcaoInstance?.detalhes?}" var="d">
    <li><g:link controller="detalheEmprestimo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="detalheEmprestimo" action="create" params="['opcao.id': opcaoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'detalheEmprestimo.label', default: 'DetalheEmprestimo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: opcaoInstance, field: 'factor', 'error')} required">
	<label for="factor">
		<g:message code="opcao.factor.label" default="Factor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="factor" value="${fieldValue(bean: opcaoInstance, field: 'factor')}" required=""/>

</div>

