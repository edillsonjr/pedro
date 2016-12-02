<%@include file="valida.jsp" %>
<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <title>Início - DF PAINTBALL</title>
        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="css/dfpaintball.css">
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
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

                <div class="col-xs-12">

                    <figure id="slide">
                        <img src="img/slide1.jpg" alt="Venha conhecer nosso campo e se emocionar nesse incrível jogo.">
                        <img src="img/slide2.jpg" alt="Fique por dentro das promoções para aniversariante.">
                    </figure>

                </div>

                <div class="col-md-8">

                    <div id="conteudo">
                        <img src="img/dogtag1.png" align="left">
                        <br>
                        <h2>Bem-vindo</h2>    
                        Seja bem-vindo combatente! Venha se emocionar no nosso campo de batalha, e ser o melhor do nosso ranking!
                        <br><br><br><br>

                        <img src="img/dogtag1.png" align="left">
                        <h2>Ranking</h2>    
                        Cadastre-se e inscreva sua equipe para participar do ranking.
                        Nomeie sua equipe adicionando membros cadastrados a ela.
                        Marque confrontos e dispute pontos.<br>
                        Premios mensais:<br>
                        <strong>1º - 1 jogo grátis + 1000 bolinhas.</strong><br>
                        <strong>2º - 1 jogo grátis.</strong><br>          
                        <strong>3º - 500 bolinhas.</strong>
                        <br>

                    </div>
                </div>

                <div class="col-md-4">

                    <div id="lateral">
                        <a href="registro.jsp"><img src="img/bannerequipes.png" alt="Registro"/></a>
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
        <script type="text/javascript">
            $(document).ready(function () {
                $("#slide img:eq(0)").addClass("ativo").show();

                var texto = $(".ativo").attr("alt");
                $("#slide").prepend("<p>" + texto + "</p>");

                setInterval(slide, 10000);

                function slide() {
                    if ($(".ativo").next().size()) {
                        $(".ativo").fadeOut().removeClass("ativo").next().fadeIn().addClass("ativo");
                    } else {
                        $(".ativo").fadeOut().removeClass("ativo");
                        $("#slide img:eq(0)").fadeIn().addClass("ativo");
                    }

                    var texto = $(".ativo").attr("alt");
                    $("#slide p").hide().html(texto).delay(500).fadeIn();
                }
            });
        </script>
        <script type="text/javascript" src="lib/bootstrap/js/bootstrap.js"></script>
    </body>

</html><%}%>