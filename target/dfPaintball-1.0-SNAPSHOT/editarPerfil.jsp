<%@include file="valida.jsp" %>

<html>

    <head>
        <meta charset="utf-8">
        <title>Editar perfil - DF PAINTBALL</title>
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


                    <form id="editarperfil" name="editarperfil" method="post" action="tratarUsuario.jsp?action=editar">




                        <div style="margin-left: 120px; width: 700px;">

                            <div class="form-group">
                                <label for="nome">Nome:</label><font color="red">*</font>
                                <input type="text" name="nome" id="nome" class="form-control" placeholder="Digite seu nome" required>
                            </div>

                            <div class="form-group">
                                <label for="nome">CPF:</label><font color="red">*</font>
                                <input type="text" name="cpf" id="cpf" class="form-control" placeholder="Digite seu CPF" required>
                            </div>

                            <div class="form-group">
                                <label for="nome">Telefone:</label><font color="red">*</font>
                                <input type="text" name="telefone" id="telefone" class="form-control" placeholder="Digite seu telefone" required>
                            </div>

                            <div class="form-group">
                                <label for="nome">Endereço:</label><font color="red">*</font>
                                <input type="text" name="endereco" id="endereco" class="form-control" placeholder="Digite seu endereço" required>
                            </div>

                            <div class="form-group">
                                <label for="nome">Email:</label><font color="red">*</font>
                                <input type="text" name="email" id="email" class="form-control" placeholder="Digite seu email" required>
                            </div>

                            <strong>SEXO:</strong>
                            <input name="sexo" type="radio" value="masculino"> Masculino
                            <input name="sexo" type="radio" value="feminino"> Feminino

                            <br><br>

                            <div class="form-group">
                                <label for="nome">Login:</label><font color="red">*</font>
                                <input type="text" maxlength=45 name="login" id="login" class="form-control" placeholder="Digite seu login" style="width:250px" required>
                            </div>

                            <div class="form-group">
                                <label for="nome">Senha:</label><font color="red">*</font>
                                <input type="password" maxlength=45 name="senha" id="senha" class="form-control" placeholder="Digite sua senha" style="width:250px" required>
                            </div>



                            <br>    
                            <font color="red">* Campos Obrigatórios</font><br>
                            <br>
                            <button id="button" class="btn btn-default" type="reset" value="Limpar">Limpar</button> 
                            <button id="button2" class="btn btn-primary" type="submit" value="Cadastrar">Cadastrar</button>  
                        </div>


                    </form>


                </div>

                <br>


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

    <html><%}%>