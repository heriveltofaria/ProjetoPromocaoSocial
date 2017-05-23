<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : listarUsuario
    Created on : 22/05/2017, 10:49:27
    Author     : Herivelto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<script src="<c:url value="resources/js/dataTables.bootstrap.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="resources/js/jquery-1.12.4.js"/>" type="text/javascript"></script>
<script src="<c:url value="resources/js/jquery.dataTables.min.js"/>" type="text/javascript"></script>
<c:import url="/WEB-INF/jsp/componentes/cabecalho.jsp"/>  
<br>
<br>
<br>
<br> 
<div class="container">
    <div class="col-md-10 col-lg-offset-2">
        <div class="configdiv">
            <table title="coco" class="table table-striped pagination dataTables_paginate form-group" >
                <tr class="top-left">
                    <th class="text-center">ID</th>
                    <th class="text-center">Nome do Responsável</th>
                    <th class="text-center">Bairro</th>
                    <th class="text-center">Telefone</th>
                    <th class="text-center">Data</th>
                    <th class="text-center">Paif</th>
                    <th class="text-center">Situação</th>
                        <c:forEach var="usuarioList" items="${usuarioList}">
                    <tr class="text-center"> 
                        <td>${usuarioList.getId()}</td>
                        <td>${usuarioList.getNomeresponsavel()}</td>
                        <td>${usuarioList.getBairro()}</td>
      
                        <td>${usuarioList.getTelefone()}</td>
                        <td><fmt:formatDate value="${usuarioList.getData()}" pattern="dd/MM/yyyy"/></td>
                        <td> ${usuarioList.getPif()}</td>
                        <td><button type="submit" class="btn btn-info">Alterar</button>
                            <button type="submit" class="btn btn-danger">Excluir</button></td>
                    </tr>
                </c:forEach> 
            </table>
        </div>
    </div>
</div>
<c:import url="/WEB-INF/jsp/componentes/rodape.jsp"/>  