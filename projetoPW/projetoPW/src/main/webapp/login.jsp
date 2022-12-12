<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<style>
#voltar{
	color: black;
	text-decoration:none;
	margin: 2rem;
}

img{
	width: 18rem;
	height: 15rem;
	margin: 2rem;
	border-radius: 7px;
}

</style>

</head>
<body>

<nav class="navbar navbar-dark bg-dark justify-content-between">
	<a class="navbar-brand p-2"> Ado��o de Animais</a>
</nav>

<div class="container-sm pt-4">
		<h3>Login</h3>
   
    	<hr class="my-4">
		
		<form action="loginUsuarioAction.jsp" method="post">
			<div class="form-group">
				<div class="col-sm-6">
					<label for="email">Email</label>
					<input class="form-control" name="email" id="email"  >
				</div>
				<div class="col">
				
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6">
					<label for="senha">Senha</label>
					<input class="form-control" name="senha" id="senha" type="password" >
				</div>
			</div>
			<input type="submit" class="btn btn-primary btn-md mt-4" value="Entrar">      
			<a href="adicionarUsuarioView.jsp" class="btn btn-primary btn-md mt-4">Cadastre-se</a>      
			
			</form>
			
			<img src="./imagens/cao.webp" alt="dog">
			<img src="./imagens/caozinho.webp" alt="dog">
			<img src="./imagens/gato.jpg" alt="cat">
			
			
</div>
</body>
</html>