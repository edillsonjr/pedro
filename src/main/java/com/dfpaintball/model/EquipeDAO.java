package com.dfpaintball.model;

import com.dfpaintball.controller.Equipe;
import java.sql.PreparedStatement;
import java.util.ArrayList;

public class EquipeDAO extends Conexao {

    public ArrayList<Equipe> listar() throws Exception {
        abrirBanco();
        ArrayList<Equipe> lista = new ArrayList<>();
        pstmt = con.prepareStatement("SELECT * FROM equipe "
                + "ORDER BY pontos DESC");
        System.out.println(pstmt);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            Equipe equipe = new Equipe();
            equipe.setIdEquipe(rs.getInt("id_equipe"));
            equipe.setNome(rs.getString("nome"));
            equipe.setPonto(rs.getInt("pontos"));
            equipe.setQtdPessoas(rs.getInt("qtdPessoas"));

            equipe.setUsuario(rs.getInt("usuario_id"));
            lista.add(equipe);
        }
        return lista;
    }

    public Equipe pesquisar(String idEquipe) throws Exception {
        pstmt = (PreparedStatement) con.prepareStatement("SELECT * FROM equipe "
                + "WHERE idEquipe=?");
        pstmt.setString(1, idEquipe);
        rs = pstmt.executeQuery();
        Equipe equipe = new Equipe();
        rs.next();
        equipe.setIdEquipe(rs.getInt("idEquipe"));
        equipe.setNome(rs.getString("nome"));
        equipe.setPonto(rs.getInt("ponto"));
        equipe.setQtdPessoas(rs.getInt("qtdPessoas"));

        return equipe;
    }

    public ArrayList<Equipe> listarequipes(int idCliente) throws Exception {
        ArrayList<Equipe> lista = new ArrayList<>();
        pstmt = (PreparedStatement) con.prepareStatement("SELECT * FROM equipe "
                + "WHERE Cliente_idCliente=?");
        pstmt.setInt(1, idCliente);
        rs = pstmt.executeQuery();
        while (rs.next()) {
            Equipe equipe = new Equipe();
            equipe.setIdEquipe(rs.getInt("idEquipe"));
            equipe.setNome(rs.getString("nome"));
            equipe.setPonto(rs.getInt("ponto"));
            equipe.setQtdPessoas(rs.getInt("qtdPessoas"));

            lista.add(equipe);
        }
        return lista;
    }

    public void cadastrarEquipe(Equipe equipe) throws Exception {
        abrirBanco();
        pstmt = (PreparedStatement) con.prepareStatement("INSERT INTO `equipe`(`nome`, `pontos`, `usuario_id`, `QtdPessoas`)"
                + "VALUES (?,?,?,?)");
        pstmt.setString(1, equipe.getNome());
        pstmt.setInt(2, equipe.getPonto());
        pstmt.setInt(4, equipe.getQtdPessoas());
        pstmt.setInt(3, equipe.getUsuario());
        System.out.println(pstmt);
        pstmt.execute();
        fecharBanco();
    }

    public void editar(Equipe c) throws Exception {
        abrirBanco();
        String sql = "UPDATE equipe set nome=?, ponto=?, qtdPessoas=? where idEquipe=?";
        pstmt = (PreparedStatement) con.prepareStatement(sql);
        pstmt.setString(1, c.getNome());
        pstmt.setInt(2, c.getPonto());
        pstmt.setInt(3, c.getQtdPessoas());
        pstmt.setInt(4, c.getIdEquipe());
        pstmt.executeUpdate();
        fecharBanco();

    }

    public void excluir(String id) throws Exception {
        abrirBanco();
        pstmt = (PreparedStatement) con.prepareStatement("DELETE FROM equipe "
                + "WHERE id_equipe=?");
        pstmt.setString(1, id);
        pstmt.executeUpdate();
        fecharBanco();
    }
}
