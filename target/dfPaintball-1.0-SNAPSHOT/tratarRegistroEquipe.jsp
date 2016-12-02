
<%@page import="com.dfpaintball.model.EquipeDAO"%>
<%@page import="com.dfpaintball.controller.Usuario"%>
<%@page import="com.dfpaintball.controller.Equipe"%>
<%
    try {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("cadastrar")) {
            Equipe e = new Equipe();

            e.setNome(request.getParameter("nome"));
            e.setQtdPessoas(Integer.parseInt(request.getParameter("qtdPessoas")));
            Integer idUsu = (Integer) session.getAttribute("id");
            System.err.print("cara   " + session.getAttribute("id"));
            System.err.print("cara   " + e.toString());
            System.err.print("cara   " + idUsu);
            e.setUsuario(idUsu);
            System.err.print("cara   " + e.getUsuario());
            System.err.print("cara   " + e.toString());

            EquipeDAO ed = new EquipeDAO();
            ed.cadastrarEquipe(e);
            request.getRequestDispatcher("painel.jsp").forward(request, response);
        } else if (action.equalsIgnoreCase("editar")) {
            Equipe e = new Equipe();

            e.setNome(request.getParameter("nome"));
            e.setQtdPessoas(Integer.parseInt(request.getParameter("qtdPessoas")));
            e.setIdEquipe(Integer.parseInt(request.getParameter("idEquipe")));
            e.setUsuario(Integer.parseInt(String.valueOf(session.getAttribute("id"))));
            EquipeDAO ed = new EquipeDAO();
            ed.editar(e);
            request.getRequestDispatcher("painel.jsp").forward(request, response);
        }

    } catch (NullPointerException npe) {
        out.print("ERRO!!!" + npe.getMessage());
    }


%>

