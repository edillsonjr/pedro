/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dfpaintball.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author pedro
 */
public class Conexao {
    public Connection con;
    public PreparedStatement pstmt;
    public ResultSet rs;

    public void abrirBanco() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost/dfpaintballnovo";
        String usuario = "root";
        String senha = "root";
        con = (Connection) DriverManager.getConnection(url,usuario,senha);
    }
    public void fecharBanco() throws Exception{
        if(con!=null){
            con.close();
        }
    }

}
