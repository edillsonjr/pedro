/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dfpaintball.controller;

/**
 *
 * @author Pedro
 */
public class Equipe {

    private int idEquipe;
    private String nome;
    private int ponto;
    private int qtdPessoas;
    private int usuario_id;

    public Equipe() {
    }

    public Equipe(int idEquipe, String nome, int ponto, int qtdPessoas, int cliente) {
        this.idEquipe = idEquipe;
        this.nome = nome;
        this.ponto = ponto;
        this.qtdPessoas = qtdPessoas;
        this.usuario_id = cliente;
    }

    public int getIdEquipe() {
        return idEquipe;
    }

    public void setIdEquipe(int idEquipe) {
        this.idEquipe = idEquipe;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getPonto() {
        return ponto;
    }

    public void setPonto(int ponto) {
        this.ponto = ponto;
    }

    public int getQtdPessoas() {
        return qtdPessoas;
    }

    public void setQtdPessoas(int qtdPessoas) {
        this.qtdPessoas = qtdPessoas;
    }

    public int getUsuario() {
        return usuario_id;
    }

    public void setUsuario(Integer cliente) {
      
        System.out.println("Usu: "+cliente);  this.usuario_id = cliente;
    }

    @Override
    public String toString() {
        return "Equipe{" + "idEquipe=" + idEquipe + ", nome=" + nome + ", ponto=" + ponto + ", qtdPessoas=" + qtdPessoas + ", usuario_id=" + usuario_id + '}';
    }

}
