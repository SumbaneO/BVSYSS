<%@ page import="bvsys.DetalheEmprestimo" %>



<div class="fieldcontain ${hasErrors(bean: detalheEmprestimoInstance, field: 'emprestimos', 'error')} required">
	<label for="emprestimos">
		<g:message code="detalheEmprestimo.emprestimos.label" default="Emprestimos" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emprestimos" name="emprestimos.id" from="${bvsys.Emprestimos.list()}" optionKey="id" required="" value="${detalheEmprestimoInstance?.emprestimos?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: detalheEmprestimoInstance, field: 'opcao', 'error')} required">
	<label for="opcao">
		<g:message code="detalheEmprestimo.opcao.label" default="Opcao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="opcao" name="opcao.id" from="${bvsys.Opcao.list()}" optionKey="id" required="" value="${detalheEmprestimoInstance?.opcao?.id}" class="many-to-one"/>

</div>

