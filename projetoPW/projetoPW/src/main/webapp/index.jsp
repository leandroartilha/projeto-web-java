<%@page import="com.ifsp.petshop.dao.AnimalDao"%>
<%@page import="com.ifsp.petshop.model.Animal"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Projeto PW - Leandro</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>

	<jsp:include page="components/header.jsp"></jsp:include>
	
	<div class="container-md pt-4">   
	<h3>Listagem animais &#129409</h3>
 
    <hr class="my-4">
    
    <%@ page import="com.ifsp.petshop.dao.*, com.ifsp.petshop.model.*" %>
	<%
   	 List<Animal> animais = AnimalDao.listarAnimais();
   	 request.setAttribute("animais", animais);
	%>
	
		<table class="table table-striped text-center">
			<thead>
				<tr>
					<th scope="col">Id</<th>
					<th scope="col">Nome</th>
					<th scope="col">Raça</th>				
					<th scope="col">Idade</th>
					<th scope="col">Cor</th>
					<th scope="col">#</th>
					<th scope="col">#</th>
				</tr>
			</thead>
			<tbody>
           		<c:forEach var="item" items="${animais}">
               		<tr>
	                   <td><c:out value="${item.id}" /></td>
	                   <td><c:out value="${item.nome}" /></td>
	                   <td><c:out value="${item.raca}" /></td>
	                   <td><c:out value="${item.idade}" /></td>
	                   <td><c:out value="${item.cor}" /></td>
	                   <td>	                       
	                       <a href="editarAnimalForm.jsp?id=${item.id}" class="btn btn-primary btn-md active" role="button" aria-pressed="true">&#128396 Editar</a>                     
	                   </td>
                   		<td>
                   	   		<a href="deletarAnimalAction.jsp?id=${item.id}" class="btn btn-danger btn-md active" role="button" aria-pressed="true">&#128465 Deletar</a>
                   		</td>
               		</tr>
           		</c:forEach>
        	</tbody>
		</table>
		 <c:if test="${empty animais}">
		 	<p class="text-center">
		 		<b>Nenhum registro encontrado!</b>
		 	</p>
		 </c:if>
		
		
		<a href="adicionarAnimalView.jsp" class="btn btn-success btn-md active" role="button" aria-pressed="true"><b>+</b> Adicionar</a>
	</div>
</body>
</html>