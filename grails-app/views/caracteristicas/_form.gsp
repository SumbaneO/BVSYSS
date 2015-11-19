<%@ page import="bvsys.Caracteristicas" %>



<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="caracteristicas.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${bvsys.Utilizador.list()}" optionKey="id" value="${caracteristicasInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="caracteristicas.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${bvsys.Utilizador.list()}" optionKey="id" value="${caracteristicasInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="caracteristicas.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${caracteristicasInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="caracteristicas.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${caracteristicasInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="caracteristicas.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${caracteristicasInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="caracteristicas.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${caracteristicasInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'emprestimo', 'error')} required">
	<label for="emprestimo">
		<g:message code="caracteristicas.emprestimo.label" default="Emprestimo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emprestimo" name="emprestimo.id" from="${bvsys.Emprestimos.list()}" optionKey="id" required="" value="${caracteristicasInstance?.emprestimo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="caracteristicas.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${caracteristicasInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: caracteristicasInstance, field: 'opcoes', 'error')} ">
	<label for="opcoes">
		<g:message code="caracteristicas.opcoes.label" default="Opcoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${caracteristicasInstance?.opcoes?}" var="o">
    <li><g:link controller="opcao" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="opcao" action="create" params="['caracteristicas.id': caracteristicasInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'opcao.label', default: 'Opcao')])}</g:link>
</li>
</ul>


</div>

