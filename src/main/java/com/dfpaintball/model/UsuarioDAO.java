/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dfpaintball.model;

import com.dfpaintball.controller.Usuario;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author pedro
 */
public class UsuarioDAO extends Conexao {

    public void cadastrarUsuario(Usuario c) throws SQLException, Exception {
        abrirBanco();
        int cpfInt;

        String cpfString = c.getCpf().replace(".", "").replace("-", "");
        System.out.println("CARALHO " + c.toString());
        System.out.println("CARALHO " + cpfString);

        String sql = "insert into usuario (`cpf`, `nome`, `sexo`, `endereco`, `email`, `perfil_id_perfil`,  `telefone`, `login`, `senha`) "
                + "values (?,"
                + "?,"
                + "?,"
                + "?,"
                + "?,"
                + "?,"
                + "?,"
                + "?,"
                + "?)";
        pstmt = (PreparedStatement) con.prepareStatement(sql);
        pstmt.setString(9, c.getLogin());
        pstmt.setString(8, c.getSenha());
        pstmt.setInt(6, 2);

        pstmt.setString(2, c.getNome());
        pstmt.setString(3, c.getSexo().substring(0, 1));
        pstmt.setInt(1, 111);

        pstmt.setString(7, c.getTelefone());
        pstmt.setString(4, c.getEndereco());
        pstmt.setString(5, c.getEmail());
        System.out.println(sql);
        System.out.println(pstmt.toString());
        pstmt.execute();

        fecharBanco();
    }

    public Usuario logar(String login, String senha) throws Exception {
        abrirBanco();
        pstmt = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario "
                + "WHERE login=? AND senha=?");
        pstmt.setString(1, login);
        pstmt.setString(2, senha);
        rs = pstmt.executeQuery();
        Usuario usuario = new Usuario();
        if (rs.next()) {

            usuario.setLogin(rs.getString("login"));
            usuario.setSenha(rs.getString("senha"));
        }
        fecharBanco();
        return usuario;
    }

    public Usuario pesquisar(int idUsuario) throws Exception {
        abrirBanco();
        pstmt = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario "
                + "WHERE idUsuario=?");
        pstmt.setInt(1, idUsuario);
        rs = pstmt.executeQuery();
        Usuario usuario = new Usuario();
        if (rs.next()) {

            usuario.setNome(rs.getString("nome"));
            usuario.setTelefone(rs.getString("telefone"));
            usuario.setCpf(rs.getString("cpf"));
            usuario.setEmail(rs.getString("email"));
            usuario.setEndereco(rs.getString("endereco"));
            usuario.setSexo(rs.getString("sexo"));
            usuario.setLogin(rs.getString("login"));
            usuario.setSenha(rs.getString("senha"));

        }
        return usuario;
    }

    public Usuario pesquisar(String login, String senha) throws Exception {
        abrirBanco();
        pstmt = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario "
                + "WHERE login=? and senha=?");
        pstmt.setString(1, login);
        pstmt.setString(2, senha);
        rs = pstmt.executeQuery();
        Usuario usuario = new Usuario();
        if (rs.next()) {
            System.err.println("0ID" + rs.getInt("id"));
            usuario.setId(rs.getInt("id"));
            usuario.setNome(rs.getString("nome"));
            usuario.setTelefone(rs.getString("telefone"));
            usuario.setCpf(rs.getString("cpf"));
            usuario.setEmail(rs.getString("email"));
            usuario.setEndereco(rs.getString("endereco"));
            usuario.setSexo(rs.getString("sexo"));
            usuario.setLogin(rs.getString("login"));
            usuario.setSenha(rs.getString("senha"));

        }
        return usuario;
    }

    public ArrayList<Usuario> listar() throws Exception {
        abrirBanco();
        ArrayList<Usuario> lista = new ArrayList<>();
        pstmt = (PreparedStatement) con.prepareStatement("SELECT * FROM usuario");
        rs = pstmt.executeQuery();
        while (rs.next()) {
            Usuario usuario = new Usuario();

            usuario.setLogin(rs.getString("login"));
            usuario.setSenha(rs.getString("senha"));

            usuario.setNome(rs.getString("nome"));
            usuario.setSexo(rs.getString("sexo"));
            usuario.setCpf(rs.getString("cpf"));
            usuario.setTelefone(rs.getString("telefone"));
            usuario.setEmail(rs.getString("email"));
            lista.add(usuario);
        }
        return lista;
    }

    public void editar(Usuario c) throws Exception {

        System.err.print(c.toString());
        abrirBanco();
        String sql = "UPDATE usuario set nome=?, cpf=?, telefone=?, endereco=?, email=?, sexo=?, login=?, senha=?  where id=?";
        pstmt = (PreparedStatement) con.prepareStatement(sql);
        pstmt.setString(1, c.getNome());
        pstmt.setString(2, c.getCpf());
        pstmt.setString(3, c.getTelefone());
        pstmt.setString(4, c.getEndereco());
        pstmt.setString(5, c.getEmail());
        pstmt.setString(6, c.getSexo());
        pstmt.setString(7, c.getLogin());
        pstmt.setString(8, c.getSenha());
        pstmt.setInt(9, c.getId());
        System.err.print(pstmt);
        pstmt.execute();
        fecharBanco();

    }

    public void excluir(String id) throws Exception {
        abrirBanco();
        String sql = "Delete from usuario where id=?";
        pstmt = (PreparedStatement) con.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.execute();
        fecharBanco();
    }

    public boolean autenticar(String userid, String pwd) throws SQLException, Exception {
        abrirBanco();
        PreparedStatement ps = con.prepareStatement("select * from usuario where login=? and senha=? ");
        ps.setString(1, userid);
        ps.setString(2, pwd);
        rs = ps.executeQuery();

        if (rs.next()) {
            return true;
        } else {
            System.out.println("Senha e/ou Usuário incorreto! <a href='index.jsp'>Tente Novamente</a>");
        }
        fecharBanco();
        return false;
    }

    /**
     *
     * @param userid
     * @param pwd
     * @return autentica e retorna o perfil para o controle de permissao(a barra
     * com as paginas disponiveis)
     * @throws SQLException
     */
    public String autenticarPerfil(String userid, String pwd) throws SQLException, Exception {
        abrirBanco();
        PreparedStatement ps = con.prepareStatement("select * from usuario where login=? and senha=?");
        PreparedStatement ps2;

        ps.setString(1, userid);
        ps.setString(2, pwd);

        ResultSet rs = ps.executeQuery();
        ResultSet rs2;

        if (rs.next()) {
            int perfil = rs.getInt("perfil_id_perfil");
            rs.close();

            ps2 = con.prepareStatement("select * from perfil where id_perfil=?");
            ps2.setInt(1, perfil);

            rs2 = ps2.executeQuery();

            if (rs2.next()) {

                String descricao = rs2.getString(2);

                System.out.println(descricao);

                return descricao;

            }
        } else {
            System.out.println("Senha e/ou Usuário incorreto! Tente Novamente</a>");
        }
        return null;
    }

}
