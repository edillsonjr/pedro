

<%@page import="com.dfpaintball.model.UsuarioDAO"%>
<%@page import="com.dfpaintball.controller.Usuario"%>
<%@ page import ="java.sql.*" %>
<%
    String login = request.getParameter("login");
    String pwd = request.getParameter("senha");
    
    UsuarioDAO dAO = new UsuarioDAO();
    Usuario usuario = dAO.pesquisar(login, pwd);
    System.err.print(usuario.toString());
    
    if (dAO.autenticar(login, pwd)) {
        
        session.setAttribute("login", login);
        session.setAttribute("senha", pwd);
        session.setAttribute("id", usuario.getId());
        
        session.setMaxInactiveInterval(7200);
        response.sendRedirect("painel.jsp");
    } else {
        out.println("Senha e/ou Usuário incorreto! <a href='login.jsp'>Tente Novamente</a>");
        
    }
%>
