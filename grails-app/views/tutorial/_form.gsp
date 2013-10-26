<%@ page import="step.Tutorial" %>



<div class="fieldcontain ${hasErrors(bean: tutorialInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="tutorial.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${step.User.list()}" optionKey="id" required="" value="${tutorialInstance?.author?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorialInstance, field: 'step1', 'error')} ">
	<label for="step1">
		<g:message code="tutorial.step1.label" default="Step1" />
		
	</label>
	<g:textField name="step1" value="${tutorialInstance?.step1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorialInstance, field: 'step2', 'error')} ">
	<label for="step2">
		<g:message code="tutorial.step2.label" default="Step2" />
		
	</label>
	<g:textField name="step2" value="${tutorialInstance?.step2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorialInstance, field: 'step3', 'error')} ">
	<label for="step3">
		<g:message code="tutorial.step3.label" default="Step3" />
		
	</label>
	<g:textField name="step3" value="${tutorialInstance?.step3}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorialInstance, field: 'step4', 'error')} ">
	<label for="step4">
		<g:message code="tutorial.step4.label" default="Step4" />
		
	</label>
	<g:textField name="step4" value="${tutorialInstance?.step4}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorialInstance, field: 'step5', 'error')} ">
	<label for="step5">
		<g:message code="tutorial.step5.label" default="Step5" />
		
	</label>
	<g:textField name="step5" value="${tutorialInstance?.step5}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tutorialInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="tutorial.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${tutorialInstance?.titulo}"/>
</div>

