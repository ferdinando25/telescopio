<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Observatorium - Cadastro de Usu�rio</title>

<link rel="shortcut icon" type="image/x-icon"
	href="/resource/img/observa-favicon.ico">
<link rel="shortcut icon" type="image/x-icon"
	href="/resource/img/observa-favicon.ico">
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resource/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="/resource/css/observatorium.css">
<script src="/resource/js/observatorium.js"></script>
</head>
<body class="body-cadastro-usuario">

	<div class="titulo-cadastro-usuario">
		<h1>Cadastro de Usu�rio</h1>
	</div>
	<div class="container">

		<form class="form-cadastro-usuario" action="/cadastro" method="post">
			<div class="erro">${errorMessage}</div>
			<div class="form-group">
				<label for="name">Nome Completo</label> <input type="text"
					class="form-control" id="name" aria-describedby="emailHelp"
					placeholder="Nome Completo" name="usuario.usu_name">
			</div>
			<div class="form-group">
				<label for="email">Endere�o de Email</label> <input type="email"
					class="form-control" id="email" aria-describedby="emailHelp"
					placeholder="Email" name="usuario.usu_email"><small
					id="emailHelp" class="form-text text-muted">N�s nunca
					compartilharemos o seu email com ningu�m.</small>
			</div>
			<c:if test="${tipo == 'A'}">
				<div class="form-group">
					<label for="tipo">Tipo</label> <select class="form-control"
						id="tipo" placeholder="Tipo" name="usuario.usu_tipo">
						<option value="A">Administrador</option>
						<option value="U">Usu�rio</option>
					</select>
				</div>
			</c:if>
			<div class="form-group">
				<label for="password">Senha</label> <input type="password"
					class="form-control" id="password" placeholder="Senha"
					name="usuario.usu_senha">
			</div>

			<button type="submit" class="btn">Cadastrar-se</button>
		</form>
	</div>
</body>
</html>