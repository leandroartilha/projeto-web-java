<%@page import="com.ifsp.petshop.dao.AnimalDao"%>
<%@page import="com.ifsp.petshop.model.Animal"%>
<jsp:useBean id="animal" class="com.ifsp.petshop.model.Animal"></jsp:useBean>
<jsp:setProperty property="*" name="animal"/>

<%
	AnimalDao.adicionarAnimal(animal);
	response.sendRedirect("index.jsp");
%>