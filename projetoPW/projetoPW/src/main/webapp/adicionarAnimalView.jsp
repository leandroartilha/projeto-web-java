<%@page import="com.ifsp.petshop.dao.AnimalDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Projeto PW - Leandro</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<style>
#voltar{
	color: black;
	text-decoration:none;
	margin: 2rem;
}

</style>

</head>
<body>   
	<jsp:include page="components/header.jsp"></jsp:include>
	<a id="voltar" class="p-2" href="javascript:history.back()"> < Voltar </a>
	<div class="container-sm pt-4">
		<h3>Adicionar animal &#129409</h3>
   
    	<hr class="my-4">
		
		<form action="adicionarAnimalAction.jsp" method="post">
			<div class="form-group">
				<div class="col-sm-6">
					<label for="nome">Nome</label>
					<input class="form-control" name="nome" id="nome"  required placeholder="Digite o nome do animal Ex: Tigre">
				</div>
				<div class="col">
				
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6">
					<label for="raca">Raça</label>
					<input class="form-control" name="raca" id="raca"  required placeholder="Digite a raça do animal">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-6">
					<label for="idade">Idade</label>   
				 	<input class="form-control" type="number" name="idade" id="idade"  required placeholder="Digite a idade do animal">
				 </div>
			</div>
			<div class="form-group">
				<div class="col-sm-6">
					<label for="cor">Cor</label>
					<input class="form-control" name="cor" id="cor"  required placeholder="Digite a cor do animal">   
				</div>
			</div>
			<input type="submit" class="btn btn-primary btn-md mt-4" value="Salvar">      
		</form>
	</div>
</body>
</html>