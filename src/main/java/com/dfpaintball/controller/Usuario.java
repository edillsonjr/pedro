package com.dfpaintball.controller;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;

public class Usuario {

    private int id;
    private String cpf;

    private String login;

    private String senha;

    private String tipo;

    private String email;

    private String endereco;

    private String nome;

    private String sexo;

    private String telefone;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {

        this.sexo = sexo.substring(0, 1);
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    @Override
    public String toString() {
        return "Usuario{" + "id=" + id + ", cpf=" + cpf + ", login=" + login + ", senha=" + senha + ", tipo=" + tipo + ", email=" + email + ", endereco=" + endereco + ", nome=" + nome + ", sexo=" + sexo + ", telefone=" + telefone + '}';
    }

}
