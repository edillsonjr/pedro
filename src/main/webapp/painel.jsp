
<%@page import="com.dfpaintball.controller.Agendamento"%>
<%@page import="com.dfpaintball.model.AgendamentoDAO"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="valida.jsp" %>

<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <title>Painel - DF PAINTBALL</title>
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
                            <li><a href='galeria.jsp'><span>Galeria</span></a></li>
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


                <div class="col-md-9">
                    <h2>Bem-vindo ao painel</h2>    
                    Seja bem-vindo combatente! Venha se emocionar no nosso campo de batalha, e ser o melhor do nosso ranking!<br>
                    Em nosso painel você pode agendar seu jogo e participar do nosso ranking, basta escolher as opções ao lado.<br>


                    <% if (perfil.contains("cliente")) {
                            AgendamentoDAO adao = new AgendamentoDAO();

                            Agendamento agendamento = adao.pesquisar(usuario);
                            if (agendamento != null) {
                                out.println("Agendamento marcado pro dia:" + agendamento.getData());
                                out.println("Horario:" + agendamento.getHorario());

                              }
                          }%>

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
    </body>

</html>
<%}%>