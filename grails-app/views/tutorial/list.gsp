
<%@ page import="step.Tutorial" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tutorial.label', default: 'Tutorial')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tutorial" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tutorial" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="tutorial.author.label" default="Author" /></th>
					
						<g:sortableColumn property="step1" title="${message(code: 'tutorial.step1.label', default: 'Step1')}" />
					
						<g:sortableColumn property="step2" title="${message(code: 'tutorial.step2.label', default: 'Step2')}" />
					
						<g:sortableColumn property="step3" title="${message(code: 'tutorial.step3.label', default: 'Step3')}" />
					
						<g:sortableColumn property="step4" title="${message(code: 'tutorial.step4.label', default: 'Step4')}" />
					
						<g:sortableColumn property="step5" title="${message(code: 'tutorial.step5.label', default: 'Step5')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tutorialInstanceList}" status="i" var="tutorialInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tutorialInstance.id}">${fieldValue(bean: tutorialInstance, field: "author")}</g:link></td>
					
						<td>${fieldValue(bean: tutorialInstance, field: "step1")}</td>
					
						<td>${fieldValue(bean: tutorialInstance, field: "step2")}</td>
					
						<td>${fieldValue(bean: tutorialInstance, field: "step3")}</td>
					
						<td>${fieldValue(bean: tutorialInstance, field: "step4")}</td>
					
						<td>${fieldValue(bean: tutorialInstance, field: "step5")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tutorialInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
