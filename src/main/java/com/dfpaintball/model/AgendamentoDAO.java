/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dfpaintball.model;

import com.dfpaintball.controller.Agendamento;
import com.dfpaintball.controller.Usuario;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Pedro
 */
public class AgendamentoDAO extends Conexao {

    public void cadastrarAgendamento(Agendamento c) throws Exception {
        abrirBanco();

        String sql = "insert into agendamento (responsavel,qtd_pessoas,horario,data,telefone,usuario_id) "
                + "values (?,?,?,?,?,?)";
        pstmt = (PreparedStatement) con.prepareStatement(sql);
        pstmt.setString(1, c.getResponsavel());
        pstmt.setInt(2, c.getQtdPessoas());
        pstmt.setString(3, c.getHorario());
        pstmt.setString(4, c.getData());
        pstmt.setString(5, c.getTelefone());
        pstmt.setInt(6, c.getId_usuario());
        pstmt.execute();

        fecharBanco();
    }

    public Agendamento pesquisar(Usuario usuario) throws Exception {
        abrirBanco();
       
        pstmt = (PreparedStatement) con.prepareStatement("SELECT * FROM `agendamento` WHERE usuario_id=?");
        pstmt.setInt(1, usuario.getId());

        System.out.println(pstmt);
        rs = pstmt.executeQuery();
        Agendamento a = new Agendamento();
        if (rs.next()) {
            
            a.setIdAgendamento(rs.getInt("id_agendamento"));
            a.setResponsavel(rs.getString("responsavel"));
            a.setQtdPessoas(rs.getInt("qtd_pessoas"));
            a.setHorario(rs.getString("horario"));
            a.setData(rs.getString("data"));
            a.setTelefone(rs.getString("telefone"));

        }
        return a;
    }

    public List<Agendamento> listarAgendamento() throws Exception {
        abrirBanco();
        String sql = "Select * from agendamento";
        pstmt = (PreparedStatement) con.prepareStatement(sql);
        rs = pstmt.executeQuery();
        Agendamento a = null;
        List<Agendamento> listarAgendamento = new ArrayList<Agendamento>();
        while (rs.next()) {
            a = new Agendamento();
            a.setIdAgendamento(rs.getInt("id_agendamento"));
            a.setResponsavel(rs.getString("responsavel"));
            a.setQtdPessoas(rs.getInt("qtd_pessoas"));
            a.setHorario(rs.getString("horario"));
            a.setData(rs.getString("data"));
            a.setTelefone(rs.getString("telefone"));
            listarAgendamento.add(a);
        }
        return listarAgendamento;
    }

    public Agendamento buscarId(Integer idAgendamento) throws Exception {
        abrirBanco();
        String sql = "Select * from agendamento where idAgendamento=?";
        pstmt = (PreparedStatement) con.prepareStatement(sql);
        pstmt.setInt(1, idAgendamento);
        rs = pstmt.executeQuery();
        Agendamento a = new Agendamento();
        if (rs.next()) {
            a.setIdAgendamento(rs.getInt("idAgendamento"));
            a.setResponsavel(rs.getString("responsavel"));
            a.setQtdPessoas(rs.getInt("quantidadepessoas"));
            a.setHorario(rs.getString("horario"));
            a.setData(rs.getString("data"));
            a.setTelefone(rs.getString("telefone"));
        }
        return a;
    }

    public void excluir(String id) throws Exception {
        abrirBanco();
        String sql = "Delete from agendamento where id_agendamento=?";
        pstmt = (PreparedStatement) con.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.execute();
        fecharBanco();
    }

}
