<%@ page import="bvsys.Livros" %>



<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="livros.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${livrosInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'codigo', 'error')} required">
	<label for="codigo">
		<g:message code="livros.codigo.label" default="Codigo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="codigo" type="number" value="${livrosInstance.codigo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'estado', 'error')} ">
	<label for="estado">
		<g:message code="livros.estado.label" default="Estado" />
		
	</label>
	<g:textField name="estado" value="${livrosInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="livros.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${livrosInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'autores', 'error')} ">
	<label for="autores">
		<g:message code="livros.autores.label" default="Autores" />
		
	</label>
	<g:textField name="autores" value="${livrosInstance?.autores}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="livros.categoria.label" default="Categoria" />
		
	</label>
	<g:textField name="categoria" value="${livrosInstance?.categoria}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="livros.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${livrosInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'caracteristicas', 'error')} ">
	<label for="caracteristicas">
		<g:message code="livros.caracteristicas.label" default="Caracteristicas" />
		
	</label>
	<g:select name="caracteristicas" from="${bvsys.Caracteristicas.list()}" multiple="multiple" optionKey="id" size="5" value="${livrosInstance?.caracteristicas*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: livrosInstance, field: 'emprestimos', 'error')} ">
	<label for="emprestimos">
		<g:message code="livros.emprestimos.label" default="Emprestimos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${livrosInstance?.emprestimos?}" var="e">
    <li><g:link controller="emprestimos" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="emprestimos" action="create" params="['livros.id': livrosInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'emprestimos.label', default: 'Emprestimos')])}</g:link>
</li>
</ul>


</div>

