
<%@page import="com.dfpaintball.controller.Usuario"%>
<%@page import="com.dfpaintball.model.UsuarioDAO"%>
<%

    if ((session.getAttribute("login") == null) || (session.getAttribute("login") == "")) {
%>

Você não está logado no sistema<br/>
<a href="login.jsp">Por Favor, Entre com o seu Login clicando aqui!</a>
<%} else {
    UsuarioDAO udao = new UsuarioDAO();

    String login = String.valueOf(session.getAttribute("login"));
    String pwd = String.valueOf(session.getAttribute("senha"));
    Usuario usuario = udao.pesquisar(login, pwd);
    String perfil = udao.autenticarPerfil(login, pwd);
%>