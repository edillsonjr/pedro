
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <%@include file="valida.jsp" %>
    <head>
        <meta charset="utf-8">
        <title>Equipes - DF PAINTBALL</title>
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

                <div class="col-md-9" style="width: 600px; margin-top: 20px;">

                    <center><h2>Agendamentos</h2><br>

                        <table class="table table-bordered" style="margin-left: 50px;">
                            <thead>
                                <tr>
                                    <th>Pontos</th>
                                    <th>Nome</th>
                                    <th>Qtd. Pessoas</th>
                                    
                                    <th>Ação</th>
                                </tr>
                            </thead>
                            <tbody>
                                <jsp:useBean id="dao" class="com.dfpaintball.model.EquipeDAO"/>






                                <c:forEach items="${dao.listar()}" var="equipes">
                                    <tr>  <td> <c:out value="${equipes.getPonto()}"></c:out> </td>
                                        
                                        <td> <c:out value="${equipes.getNome()}"></c:out> </td> 


                                            <td> <c:out value="${equipes.getQtdPessoas()}"></c:out> </td> 


                                            <td>
                                                <a href='tratarAgendamento.jsp?action=excluir&id=<c:out value="${equipes.getIdEquipe()}"/>'>Excluir</a></td>
                                    </tr>

                                </c:forEach>
                            </tbody>
                        </table></center>

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

    </body>
    <% }%> 
</html>
