<%@page import="com.ifsp.petshop.dao.AnimalDao"%>
<%@page import="com.ifsp.petshop.model.Animal"%>
<jsp:useBean id="animal" class="com.ifsp.petshop.model.Animal"></jsp:useBean>
<jsp:setProperty property="*" name="animal"/>

<%
	AnimalDao.deletarAnimalPorId(animal.getId());
	response.sendRedirect("index.jsp");
%>