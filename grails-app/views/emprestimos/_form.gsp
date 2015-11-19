<%@ page import="bvsys.Emprestimos" %>



<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'codigo', 'error')} ">
	<label for="codigo">
		<g:message code="emprestimos.codigo.label" default="Codigo" />
		
	</label>
	<g:textField name="codigo" value="${emprestimosInstance?.codigo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'quantidade', 'error')} required">
	<label for="quantidade">
		<g:message code="emprestimos.quantidade.label" default="Quantidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantidade" type="number" value="${emprestimosInstance.quantidade}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'observacoes', 'error')} required">
	<label for="observacoes">
		<g:message code="emprestimos.observacoes.label" default="Observacoes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="observacoes" required="" value="${emprestimosInstance?.observacoes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'dataDeDevolucao', 'error')} required">
	<label for="dataDeDevolucao">
		<g:message code="emprestimos.dataDeDevolucao.label" default="Data De Devolucao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataDeDevolucao" precision="day"  value="${emprestimosInstance?.dataDeDevolucao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'datadeObtencao', 'error')} required">
	<label for="datadeObtencao">
		<g:message code="emprestimos.datadeObtencao.label" default="Datade Obtencao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="datadeObtencao" precision="day"  value="${emprestimosInstance?.datadeObtencao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'detalheEmprestimo', 'error')} ">
	<label for="detalheEmprestimo">
		<g:message code="emprestimos.detalheEmprestimo.label" default="Detalhe Emprestimo" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${emprestimosInstance?.detalheEmprestimo?}" var="d">
    <li><g:link controller="detalheEmprestimo" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="detalheEmprestimo" action="create" params="['emprestimos.id': emprestimosInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'detalheEmprestimo.label', default: 'DetalheEmprestimo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'estadoEmprestimo', 'error')} ">
	<label for="estadoEmprestimo">
		<g:message code="emprestimos.estadoEmprestimo.label" default="Estado Emprestimo" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${emprestimosInstance?.estadoEmprestimo?}" var="e">
    <li><g:link controller="estadoEmprestimo" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="estadoEmprestimo" action="create" params="['emprestimos.id': emprestimosInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'estadoEmprestimo.label', default: 'EstadoEmprestimo')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'livros', 'error')} required">
	<label for="livros">
		<g:message code="emprestimos.livros.label" default="Livros" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="livros" name="livros.id" from="${bvsys.Livros.list()}" optionKey="id" required="" value="${emprestimosInstance?.livros?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emprestimosInstance, field: 'utentes', 'error')} required">
	<label for="utentes">
		<g:message code="emprestimos.utentes.label" default="Utentes" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utentes" name="utentes.id" from="${bvsys.Utentes.list()}" optionKey="id" required="" value="${emprestimosInstance?.utentes?.id}" class="many-to-one"/>

</div>

