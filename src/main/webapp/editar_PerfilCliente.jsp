<!DOCTYPE html>

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
                            <li><a href='precos.jsp'><span>Pre�os</span></a></li>
                            <li><a href='localizacao.jsp'><span>Localiza��o</span></a></li>
                            <li><a href='equipamentosregras.jsp'><span>Equipamentos e Regras</span></a></li>
                            <li><a href='contato.jsp'><span>Contato</span></a></li>
                            <li><a href='registro.jsp'><span>Registro</span></a></li>
                            <li><a href='login.jsp'><span>Login</span></a></li>
                        </ul>
                    </div>  

                </div>

                <div class="col-md-3">

                    <div id='cssmenu' style="margin-left: 10px; margin-top: 10px; border: 1px solid #AAA;">
                        <ul>
                            <li><a href='painelAdm.jsp'>In�cio</a></li> 
                            <li><a href='agendamentos.jsp'>Agendamentos</a></li>
                            <li><a href='editar_clientes.jsp'>Clientes</a></li>
                            <li><a href='editar_equipes.jsp'>Editar Equipes</a></li>
                            <li><a href='sair.jsp'>Sair</a></li>
                        </ul>
                    </div>


                </div>

                <div class="col-md-9" style="width: 600px; margin-top: 20px;">


                    <form id="editarperfilcliente" name="editarperfilcliente" method="post" action="tratarCliente.jsp?action=editar">


                        <div style="margin-left: 50px;">

                            <div class="form-group">
                                <label for="nome">Nome:</label>
                                <input type="text" name="nome" id="nome" class="form-control" value="">
                            </div>

                            <div class="form-group">
                                <label for="nome">CPF:</label>
                                <input type="text" name="cpf" id="cpf" class="form-control" value="">
                            </div>

                            <div class="form-group">
                                <label for="nome">Telefone:</label>
                                <input type="text" name="telefone" id="telefone" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="nome">Endere�o:</label>
                                <input type="text" name="endereco" id="endereco" class="form-control">
                            </div>

                            <div class="form-group">
                                <label for="nome">Email:</label>
                                <input type="text" name="email" id="email" class="form-control" value="">
                            </div>

                            <br>

                            <strong>SEXO:</strong>
                            <input name="sexo" type="radio" value="masculino"> Masculino
                            <input name="sexo" type="radio" value="feminino"> Feminino
                            <br><br>
                            <div class="form-group">
                                <label for="nome">Descri��o do perfil:</label>
                                <textarea maxlength=1500 name="descricao" id="descricao" class="form-control" value="" style="width:450px"></textarea> 
                            </div>

                            <br>    
                            <button id="button" class="btn btn-default" type="reset" value="Limpar">Limpar</button> 
                            <button id="button2" class="btn btn-primary" type="submit" value="Cadastrar">Editar</button>
                            <br><br>

                        </div>
                    </form>


                </div>

                <br>


                <div class="col-xs-12">

                    <div id="rodape">2016 � DF Paintball Bras�lia. Todos os direitos reservados.

                    </div>


                </div>
            </div>
        </div>

        <script type="text/javascript" src="lib/jquery/jquery.js"></script>
        <script type="text/javascript" src="lib/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="lib/bootstrap/js/bootstrap.js"></script>

    </body>

    </html>