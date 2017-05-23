<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/jsp/componentes/cabecalho.jsp"/>       
<br>
<br>
<br>
<br>
<br>
<div class="container">
    <h1 class="bg-warning text-center">Cadastro de Usuários</h1>
    <form action="gravar" method="POST">
        <div class="form-group">
            <label for="nome">Nome do Responsável</label>
            <input name="nome" type="text" class="form-control" id="nome" required="">
        </div>
        <div class="form-group">
            <label for="bairro">Bairro</label>
            <input name="bairro" type="text" class="form-control" id="bairro" required="">
        </div>
        <div class="form-group">
            <label for="telefone">Telefone</label>
            <input name="telefone" type="text" class="form-control" id="telefone" required="">
        </div>
        <div class="form-group">
            <label for="data">Data</label>
            <input name="data" type="date" class="form-control" id="data"  required="">
        </div>
        <div class="form-group">
            <label for="pif">PIF</label>
            <input name="pif" type="text" class="form-control" id="pif"  required="">
        </div>
        <div>
            <button class="btn btn-info" type="submit"> Gravar</button>         
        </div>
    </form>
    <form action="listar" method="GET">
        <button class="btn btn-primary" type="submit"> Listar</button>      
        <br>
    </form>
    <div class="form-group">
        <input type="text" name="pesquisa" class="form-control" id="pesquisa" placeholder="Digite sua pesquisa">
    </div>
</div>



<c:import url="/WEB-INF/jsp/componentes/rodape.jsp"/>       

