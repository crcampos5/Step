<%@ page import="step.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${userInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		
	</label>
	<g:field type="password" name="password" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${userInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'tutorials', 'error')} ">
	<label for="tutorials">
		<g:message code="user.tutorials.label" default="Tutorials" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.tutorials?}" var="t">
    <li><g:link controller="tutorial" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tutorial" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tutorial.label', default: 'Tutorial')])}</g:link>
</li>
</ul>

</div>

