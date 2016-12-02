<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <title>Login - DF PAINTBALL</title>
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="css/dfpaintball.css">
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon"/>

        <style type="text/css">

            #painellogin {
                margin-top: 45px;
                width: 400px;
            }
            #painellogin button {
                border-radius: 0;
                text-align: center;	
            }
            #painellogin label {
                font-family: 'OpenSans-Light';
            }
            .panel-heading {
                padding: 6px 15px;
                border-top-left-radius: 0px;
                border-top-right-radius: 0px;
            }
            .panel-title {
                font-family: 'OpenSans-Light';
            }
            form .form-control {
                border-radius: 0px;
                width: 280px;
                margin-left: 60px;
                margin-top: -30px;
            }
            .panel-primary {
                border-radius: 0px;
            }

        </style>

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

                <div class="col-xs-12">

                    <br>
                    <center><img src="img/bannerlogin.png" alt=""/></center>


                    <div class="login col-md-12">


                        <div id="painellogin" class="container">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h3 class="panel-title text-center">Entrar</h3>
                                </div>
                                <div class="panel-body">

                                    <form method="POST" action="loginHandler.jsp">
                                        <div class="form-group">
                                            <label for="nome">Login:</label>
                                            <input type="text" name="login" id="login" class="form-control" placeholder="Digite seu usuário" required>
                                        </div>

                                        <div class="form-group">
                                            <label for="senha">Senha:</label>
                                            <input type="password" name="senha" id="senha" class="form-control" placeholder="Digite sua senha" required>
                                        </div>


                                        <div class="row text-center">
                                            <button type="submit" class="btn btn-primary">Entrar</button>
                                            <button type="reset" class="btn btn-danger">Limpar</button>
                                        </div>


                                    </form>

                                </div>
                            </div>
                        </div>



                    </div>



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