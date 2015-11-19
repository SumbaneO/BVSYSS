<%@ page import="bvsys.Utentes" %>



<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'criadoPor', 'error')} ">
	<label for="criadoPor">
		<g:message code="utentes.criadoPor.label" default="Criado Por" />
		
	</label>
	<g:select id="criadoPor" name="criadoPor.id" from="${bvsys.Utilizador.list()}" optionKey="id" value="${utentesInstance?.criadoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'alteradoPor', 'error')} ">
	<label for="alteradoPor">
		<g:message code="utentes.alteradoPor.label" default="Alterado Por" />
		
	</label>
	<g:select id="alteradoPor" name="alteradoPor.id" from="${bvsys.Utilizador.list()}" optionKey="id" value="${utentesInstance?.alteradoPor?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'dataAlteracao', 'error')} ">
	<label for="dataAlteracao">
		<g:message code="utentes.dataAlteracao.label" default="Data Alteracao" />
		
	</label>
	<g:datePicker name="dataAlteracao" precision="day"  value="${utentesInstance?.dataAlteracao}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="utentes.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${utentesInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'apelido', 'error')} required">
	<label for="apelido">
		<g:message code="utentes.apelido.label" default="Apelido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apelido" required="" value="${utentesInstance?.apelido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'bi', 'error')} required">
	<label for="bi">
		<g:message code="utentes.bi.label" default="Bi" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bi" required="" value="${utentesInstance?.bi}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'distrito', 'error')} required">
	<label for="distrito">
		<g:message code="utentes.distrito.label" default="Distrito" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="distrito" required="" value="${utentesInstance?.distrito}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="utentes.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${utentesInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="utentes.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${utentesInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'nuit', 'error')} required">
	<label for="nuit">
		<g:message code="utentes.nuit.label" default="Nuit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nuit" maxlength="9" required="" value="${utentesInstance?.nuit}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="utentes.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${utentesInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="utentes.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${utentesInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'dataCriacao', 'error')} required">
	<label for="dataCriacao">
		<g:message code="utentes.dataCriacao.label" default="Data Criacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCriacao" precision="day"  value="${utentesInstance?.dataCriacao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'emprestimos', 'error')} ">
	<label for="emprestimos">
		<g:message code="utentes.emprestimos.label" default="Emprestimos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utentesInstance?.emprestimos?}" var="e">
    <li><g:link controller="emprestimos" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="emprestimos" action="create" params="['utentes.id': utentesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'emprestimos.label', default: 'Emprestimos')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: utentesInstance, field: 'utilizador', 'error')} required">
	<label for="utilizador">
		<g:message code="utentes.utilizador.label" default="Utilizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utilizador" name="utilizador.id" from="${bvsys.Utilizador.list()}" optionKey="id" required="" value="${utentesInstance?.utilizador?.id}" class="many-to-one"/>

</div>

