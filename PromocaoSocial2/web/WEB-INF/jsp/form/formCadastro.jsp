<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/jsp/componentes/cabecalho.jsp"/>       
<br>
<br>
<br>
<br>
<br>

<script>
    function formatar(mascara, documento) {
        var i = documento.value.length;
        var saida = mascara.substring(0, 1);
        var texto = mascara.substring(i);

        if (texto.substring(0, 1) !== saida) {
            documento.value += texto.substring(0, 1);
        }

    }
</script>

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
            <label for="pif">PAIF</label>
            <input name="pif" type="text" class="form-control" id="pif"  required="">
        </div>
        <br>
        <div>
            <button class="btn btn-info col-md-1" type="submit"> Gravar</button>         
        </div>
    </form>
    <form action="listar" method="GET">
        <button class="btn btn-primary col-md-1" type="submit" > Listar</button>      
        <br>
    </form>
    <br>
      <br>
    <form action="listarCriterio" method="GET">
        <input type="text" name="nomeResponsavel" class="form-control" placeholder="Digite sua pesquisa">
          <br>
        <button class="btn btn-primary" type="submit" aria-expanded="false" aria-controls="collapseExample">
            Pesquisar
        </button>
    </form>
</div>
<br>
<br>
<br>


<c:import url="/WEB-INF/jsp/componentes/rodape.jsp"/>       
