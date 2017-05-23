<%-- 
    Document   : menuPrinciapal
    Created on : 13/05/2017, 12:27:04
    Author     : Herivelto
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- NAVBAR
    ================================================== -->
<body>
    <div class="navbar-wrapper">
        <div class="container-fluid">
            <nav class="navbar navbar-inverse navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Centro de Referência de Assistência Social</a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#sobre">Sobre</a></li>
                            <li><a href="#contato">Contato</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sistema <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="<c:url value="/formCadastro"/>">Cadastro</a></li>
                                    <li><a href="#">Bolsa Família</a></li>
                                    <li><a href="#">Renda Mínima</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">CREAS</li>
                                    <li><a href="#">PETI</a></li>
                                    <li><a href="#">Ação Jovem</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>