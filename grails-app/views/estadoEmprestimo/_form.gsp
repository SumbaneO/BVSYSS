<%@ page import="bvsys.EstadoEmprestimo" %>



<div class="fieldcontain ${hasErrors(bean: estadoEmprestimoInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="estadoEmprestimo.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${bvsys.Utilizador.list()}" optionKey="id" value="${estadoEmprestimoInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoEmprestimoInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="estadoEmprestimo.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${bvsys.Utilizador.list()}" optionKey="id" value="${estadoEmprestimoInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoEmprestimoInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="estadoEmprestimo.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${estadoEmprestimoInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoEmprestimoInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="estadoEmprestimo.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estado" from="${estadoEmprestimoInstance.constraints.estado.inList}" required="" value="${estadoEmprestimoInstance?.estado}" valueMessagePrefix="estadoEmprestimo.estado"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoEmprestimoInstance, field: 'observacoes', 'error')} ">
	<label for="observacoes">
		<g:message code="estadoEmprestimo.observacoes.label" default="Observacoes" />
		
	</label>
	<g:textArea name="observacoes" cols="40" rows="5" maxlength="1000" value="${estadoEmprestimoInstance?.observacoes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estadoEmprestimoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="estadoEmprestimo.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${estadoEmprestimoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoEmprestimoInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="estadoEmprestimo.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${estadoEmprestimoInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: estadoEmprestimoInstance, field: 'emprestimos', 'error')} required">
	<label for="emprestimos">
		<g:message code="estadoEmprestimo.emprestimos.label" default="Emprestimos" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emprestimos" name="emprestimos.id" from="${bvsys.Emprestimos.list()}" optionKey="id" required="" value="${estadoEmprestimoInstance?.emprestimos?.id}" class="many-to-one"/>

</div>

