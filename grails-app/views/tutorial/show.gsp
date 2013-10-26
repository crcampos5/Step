
<%@ page import="step.Tutorial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tutorial.label', default: 'Tutorial')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tutorial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tutorial" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tutorial">
			
				<g:if test="${tutorialInstance?.author}">
				<li class="fieldcontain">
					<span id="author-label" class="property-label"><g:message code="tutorial.author.label" default="Author" /></span>
					
						<span class="property-value" aria-labelledby="author-label"><g:link controller="user" action="show" id="${tutorialInstance?.author?.id}">${tutorialInstance?.author?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorialInstance?.step1}">
				<li class="fieldcontain">
					<span id="step1-label" class="property-label"><g:message code="tutorial.step1.label" default="Step1" /></span>
					
						<span class="property-value" aria-labelledby="step1-label"><g:fieldValue bean="${tutorialInstance}" field="step1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorialInstance?.step2}">
				<li class="fieldcontain">
					<span id="step2-label" class="property-label"><g:message code="tutorial.step2.label" default="Step2" /></span>
					
						<span class="property-value" aria-labelledby="step2-label"><g:fieldValue bean="${tutorialInstance}" field="step2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorialInstance?.step3}">
				<li class="fieldcontain">
					<span id="step3-label" class="property-label"><g:message code="tutorial.step3.label" default="Step3" /></span>
					
						<span class="property-value" aria-labelledby="step3-label"><g:fieldValue bean="${tutorialInstance}" field="step3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorialInstance?.step4}">
				<li class="fieldcontain">
					<span id="step4-label" class="property-label"><g:message code="tutorial.step4.label" default="Step4" /></span>
					
						<span class="property-value" aria-labelledby="step4-label"><g:fieldValue bean="${tutorialInstance}" field="step4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorialInstance?.step5}">
				<li class="fieldcontain">
					<span id="step5-label" class="property-label"><g:message code="tutorial.step5.label" default="Step5" /></span>
					
						<span class="property-value" aria-labelledby="step5-label"><g:fieldValue bean="${tutorialInstance}" field="step5"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tutorialInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="tutorial.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${tutorialInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${tutorialInstance?.id}" />
					<g:link class="edit" action="edit" id="${tutorialInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
