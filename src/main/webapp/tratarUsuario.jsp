<%-- 
    Document   : tratarUsuario
    Created on : 28/11/2014, 10:48:30
    Author     : Pedro
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="com.dfpaintball.model.UsuarioDAO"%>
<%@page import="com.dfpaintball.controller.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tratar Usuario</title>
    </head>
    <body>
        <%
            try {
                String action = request.getParameter("action");
                if (action.equalsIgnoreCase("cadastrar")) {
                    Usuario c = new Usuario();
                    
                    c.setLogin(request.getParameter("login"));
                    c.setSenha(request.getParameter("senha"));
                    
                    c.setNome(request.getParameter("nome"));
                    c.setSexo(request.getParameter("sexo"));
                    c.setCpf(request.getParameter("cpf"));
                    c.setTelefone(request.getParameter("telefone"));
                    c.setEndereco(request.getParameter("endereco"));
                    c.setEmail(request.getParameter("email"));
                    
                    UsuarioDAO cd = new UsuarioDAO();
                    try {
                        System.out.print(c.toString());
                        cd.cadastrarUsuario(c);
                        request.getRequestDispatcher("cadastroSucesso.jsp").forward(request, response);
                    } catch (SQLException e) {
                        System.out.print(e);
                        out.print("ERRO!!!" + e.getMessage());
                        
                    }
                } else if (action.equalsIgnoreCase("editar")) {
                    Usuario c = new Usuario();
                    System.err.print(c.toString());
                    c.setId((Integer) session.getAttribute("id"));
                    c.setNome(request.getParameter("nome"));
                    c.setCpf(request.getParameter("cpf"));
                    c.setTelefone(request.getParameter("telefone"));
                    c.setEndereco(request.getParameter("endereco"));
                    c.setEmail(request.getParameter("email"));
                    c.setSexo(request.getParameter("sexo"));
                    c.setLogin(request.getParameter("login"));
                    c.setSenha(request.getParameter("senha"));
                    UsuarioDAO cd = new UsuarioDAO();
                    try {
                        cd.editar(c);
                        request.getRequestDispatcher("painel.jsp").forward(request, response);
                        
                    } catch (Exception e) {
                        out.print("ERRO NO EDITAR CLIENTE" + e.getMessage());
                    }
                } else if (action.equalsIgnoreCase("excluir")) {
                    UsuarioDAO cd = new UsuarioDAO();
                    String id = request.getParameter("id");
                    
                    try {
                        cd.excluir(id);
                        request.getRequestDispatcher("painel.jsp").forward(request, response);
                    } catch (Exception e) {
                        out.print("ERRO!!!" + e.getMessage());
                        
                    }
                }
                
            } catch (NullPointerException npe) {
                out.print("ERRO!!!" + npe.getMessage());
            }
        %>
