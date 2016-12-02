<%@page import="java.sql.SQLException"%>
<%@page import="com.dfpaintball.model.AgendamentoDAO"%>
<%@page import="com.dfpaintball.controller.Agendamento"%>
<%
    try {

        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("cadastrar")) {
            Agendamento agenda = new Agendamento();
         
               System.out.print( session.getAttribute("id"));
            int id = (Integer) session.getAttribute("id");
            agenda.setData(request.getParameter("data"));

            agenda.setHorario(request.getParameter("horario"));
            agenda.setQtdPessoas(Integer.parseInt(request.getParameter("quantidadepessoas")));

            agenda.setResponsavel(request.getParameter("responsavel"));
            agenda.setTelefone(request.getParameter("telefone"));
            agenda.setId_usuario(id);

            AgendamentoDAO luc = new AgendamentoDAO();
            try {
                luc.cadastrarAgendamento(agenda);
                request.getRequestDispatcher("painel.jsp").forward(request, response);
            } catch (SQLException e) {
                out.print("ERRO!!!" + e.getMessage());

            }
        } else if (action.equalsIgnoreCase("excluir")) {
            AgendamentoDAO luc = new AgendamentoDAO();
            String id = request.getParameter("id");

            try {
                luc.excluir(id);
                request.getRequestDispatcher("agendamentos.jsp").forward(request, response);
            } catch (SQLException e) {
                out.print("ERRO!!!" + e.getMessage());

            }
        }

    } catch (NullPointerException npe) {
        out.print("ERRO1!!!" + npe.getMessage());
    }
%>