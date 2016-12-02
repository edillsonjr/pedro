<!DOCTYPE html>

<html>

    <head>
        <meta charset="utf-8">
        <title>Galeria - DF PAINTBALL</title>

        <link rel="stylesheet" href="lib/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="css/dfpaintball.css">
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <link href="css/galeria.css" rel="stylesheet" type="text/css" media="screen"> 
        <script type="text/javascript" src="lib/jquery-galeria.js"></script> 
        <script type="text/javascript" src="lib/jquery.galleria.pack.js"></script>
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

                    <div id="galeriapage">
                        <br>           
                        <p align="center" class="nav"><a href="#" onclick="$.galleria.prev(); return false;">&laquo; anterior</a> | <a href="#" onclick="$.galleria.next(); return false;">próxima &raquo;</a></p>
                        <br>
                        <div id="main_image"></div>
                        <ul class="gallery_demo">
                            <li class="active"><img src="img/galeria/img1.jpg" alt="Rock" title="Campo de batalha DF Paintball"></li>
                            <li><img src="img/galeria/img2.JPG" alt="" title="Campo de batalha DF Paintball"></li>
                            <li><img src="img/galeria/img3.JPG" alt="" title="Campo de batalha DF Paintball"></li>
                            <li><img src="img/galeria/img4.JPG" alt="" title="Campo de batalha DF Paintball"></li>
                            <li><img src="img/galeria/img5.JPG" alt="" title="Campo de batalha DF Paintball"></li>
                            <li><img src="img/galeria/img6.JPG" alt="" title="Campo de batalha DF Paintball"></li>
                            <li><img src="img/galeria/img7.jpg" alt="" title="Campo de batalha DF Paintball"></li>
                            <li><img src="img/galeria/img8.jpg" alt="" title="Campo de batalha DF Paintball"></li>
                            <li><img src="img/galeria/img9.jpg" alt="" title="Campo de batalha DF Paintball"></li>
                        </ul>
                    </div>


                </div>


                <div class="col-xs-12">

                    <div id="rodape">2016 © DF Paintball Brasília. Todos os direitos reservados.

                    </div>


                </div>
            </div>
        </div>

        <script type="text/javascript" src="lib/bootstrap/js/bootstrap.js"></script>

        <script type="text/javascript">

                                            jQuery(function ($) {

                                                $('.gallery_demo_unstyled').addClass('gallery_demo'); // adds new class name to maintain degradability

                                                $('ul.gallery_demo').galleria({
                                                    history: true, // ativa a legenda da foto ampliada
                                                    clickNext: true, // ativa o link sobre a imagem ampliada para a próxima
                                                    insert: '#main_image', // nome do div onde aparecerá a imagem ampliada
                                                    onImage: function (image, caption, thumb) {

                                                        // efeito na imagem e na legenda
                                                        if (!($.browser.mozilla && navigator.appVersion.indexOf("Win") != -1)) {
                                                            image.css('display', 'none').fadeIn(1000);
                                                        }
                                                        caption.css('display', 'none').fadeIn(1000);

                                                        var _li = thumb.parents('li');

                                                        _li.siblings().children('img.selected').fadeTo(500, 0.3);

                                                        thumb.fadeTo('fast', 1).addClass('selected');

                                                        // adiciona um título para a imagem ampliada
                                                        image.attr('title', 'Próxima imagem >>');
                                                    },
                                                    onThumb: function (thumb) {
                                                        var _li = thumb.parents('li');
                                                        var _fadeTo = _li.is('.active') ? '1' : '0.3';
                                                        // efeito ao carregar os thumbs
                                                        thumb.css({display: 'none', opacity: _fadeTo}).fadeIn(1500);
                                                        // efeito ao colocar o mouse em cima do thumb
                                                        thumb.hover(
                                                                function () {
                                                                    thumb.fadeTo('fast', 1);
                                                                },
                                                                function () {
                                                                    _li.not('.active').children('img').fadeTo('fast', 0.3);
                                                                }
                                                        )
                                                    }
                                                });
                                            });

        </script>


    </body>

</html>