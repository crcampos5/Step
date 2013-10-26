<%@ page import="step.User"%>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
	<link rel="stylesheet"
	href="${resource(dir: 'css', file: 'styles.css')}" type="text/css">

	
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">	
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css">

<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>


<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<div class="header" id="header">
		<div class="navbar navbar-inverse ">
			<div class="container">
				<div class="navbar-header">
					<button data-target=".navbar-collapse" data-toggle="collapse"
						class="navbar-toggle" type="button">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="${createLink(uri: '/')}" class="navbar-brand">Step</a>
				</div>
				<div class="navbar-collapse collapse navbar-right">

					<g:if test="${session.user}">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a data-toggle="dropdown"
								class="dropdown-toggle" href="#"> ${session.user.name} <b
									class="caret"></b>
							</a>
								<ul class="dropdown-menu">
									
									<li><g:link controller="user" action="edit">Cuenta</g:link></li>
									
									<li class="divider"></li>
									
									<li><g:link controller="user" action="logout">Salir</g:link></li>
									
								</ul></li>
						</ul>
					</g:if>
					<g:else>
						<ul class="nav navbar-nav">

							<li><g:link controller="user" action="create">Registrarse</g:link></li>
						</ul>

						<g:form class="navbar-form navbar-right" controller="user"
							action="authenticate">
							<div class="form-group">
								<input type="text" name="email" class="form-control"
									placeholder="Email">
							</div>
							<div class="form-group">
								<input type="password" name="password" class="form-control"
									placeholder="Password">
							</div>
							<button class="btn btn-success" name="authenticate" type="submit">Sign
								in</button>
						</g:form>
					</g:else>
				</div>
				<!--/.navbar-collapse -->
			</div>
		</div>
	</div>
	<div class="center">
		<div class="container">
			<g:layoutBody />
		</div>
	</div>


	<footer class="footer" id="footer">
		<div class="container">
			<p>Todos los derechos reservados @Campos5</p>
		</div>

	</footer>

	<div id="spinner" class="spinner" style="display: none;">
		<g:message code="spinner.alt" default="Loading&hellip;" />
	</div>
	<g:javascript library="application" />


<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
	<r:layoutResources />
</body>
</html>
