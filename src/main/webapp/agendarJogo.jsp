<%@include file="valida.jsp" %>
<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <title>Agendamento de jogo - DF PAINTBALL</title>
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="css/dfpaintball.css">
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <link href="css/menupainel.css" rel="stylesheet" type="text/css">
        <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon"/>
    </head>


    <body align="center" style="background-color: #36393D;">

        <div id="corpo">
            <div class="row">

                <div class="col-xs-12">

                    <img src="img/banner.jpg" alt="DF Paintball" width="979" height="200" usemap="#Map"/>

                    <map name="Map">
                        <area shape="rect" coords="10,38,400,143" href="index.jsp">
                        <area shape="rect" coords="839,5,860,24" href="http://www.facebook.com/" target="_blank">
                        <area shape="rect" coords="871,4,891,23" href="http://www.twitter.com/" target="_blank">
                        <area shape="rect" coords="902,5,919,22" href="http://www.youtube.com/" target="_blank">
                    </map>


                    <div id='menu'>
                        <ul>
                            <li><a href='index.jsp'><span>Home</span></a></li>
                            <li><a href='galeria.jsp'><span>Gal;eria</span></a></li>
                            <li><a href='precos.jsp'><span>Preços</span></a></li>
                            <li><a href='localizacao.jsp'><span>Localização</span></a></li>
                            <li><a href='equipamentosregras.jsp'><span>Equipamentos e Regras</span></a></li>
                            <li><a href='contato.jsp'><span>Contato</span></a></li>
                            <li><a href='registro.jsp'><span>Registro</span></a></li>
                            <li><a href='login.jsp'><span>Login</span></a></li>
                        </ul>
                    </div>  

                </div>

                <div class="col-md-3">

                    <% if (perfil.contains("cliente")) {
                    %><%@include file= 'menu_cliente.jsp' %> 

                    <% }%>      <% if (perfil.contains("funcionario")) {
                    %><%@include file= 'menu_funcionario.jsp' %> 

                    <% }%>      <% if (perfil.contains("administrador")) {
                    %><%@include file= 'menu_funcionario.jsp' %> 

                    <% }%> 

                </div>

                <div class="col-md-9" style="width: 600px; margin-top: 20px;">


                    <form id="cadastro" name="cadastro" method="post" action="tratarAgendamento.jsp?action=cadastrar">        

                          <div class="form-group">
                            <label for="nome">Nome do responsável:</label><font color="red">*</font>
                            <input type="text" name="responsavel" id="responsavel" class="form-control" placeholder="Digite o nome do responsável" required>
                        </div>

                        <div class="form-group">
                            <label for="nome">Quantidade de jogadores:</label><font color="red">*</font>&nbsp;<font>(Máx. 14 jogadores)</font>
                            <input type="text" maxlength=2 name="quantidadepessoas" id="quantidadePessoas" class="form-control" placeholder="Digite a QTD de jogadores" required>
                        </div>

                        <div class="form-group">
                            <label for="nome">Horário:</label><font color="red">*</font>
                            <input type="time" name="horario" id="horario" class="form-control" placeholder="Digite o Horário" required>
                        </div>

                        <div class="form-group">
                            <label for="nome">Data:</label><font color="red">*</font>
                            <input type="date" name="data" id="data" class="form-control" placeholder="Digite a data" required>
                        </div>

                        <div class="form-group">
                            <label for="nome">Telefone:</label><font color="red">*</font>
                            <input type="text" name="telefone" id="telefone" class="form-control" placeholder="Digite seu telefone" required>
                        </div>

                        <font color="red">* Campos Obrigatórios</font><br>
                        <font >Você está fazendo um pré-agendamento não valendo como marcação imediata. Retornaremos para confirmação da vaga em breve. Equipe DFPAINTBALL.</font>
                        <br><br>

                        <button id="button" class="btn btn-default" type="reset" value="Limpar">Limpar</button> 
                        <button id="button2" class="btn btn-primary" type="submit" value="Agendar">Agendar</button>

                    </form>	
                    <br>

                </div>


                <div class="col-xs-12">

                    <div id="rodape">2016 © DF Paintball Brasília. Todos os direitos reservados.

                    </div>


                </div>
            </div>
        </div>

        <script type="text/javascript" src="lib/jquery/jquery.js"></script>
        <script type="text/javascript" src="lib/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="lib/bootstrap/js/bootstrap.js"></script>
        <script type="text/javascript" src="lib/jquery.maskedinput.js"></script>

        <script>
            jQuery(function ($) {
                $("#telefone").mask("(99)99999-9999");
            });
        </script>
    </body>

</html>             <% }%> 