package com.dfpaintball.controller;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;

public class Agendamento {

    private int idAgendamento;
    private int id_usuario;

    private String data;

    private String horario;

    private int qtdPessoas;

    private String responsavel;

    private String telefone;

    public int getIdAgendamento() {
        return idAgendamento;
    }

    public void setIdAgendamento(int idAgendamento) {
        this.idAgendamento = idAgendamento;
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public int getQtdPessoas() {
        return qtdPessoas;
    }

    public void setQtdPessoas(int qtdPessoas) {
        this.qtdPessoas = qtdPessoas;
    }

    public String getResponsavel() {
        return responsavel;
    }

    public void setResponsavel(String responsavel) {
        this.responsavel = responsavel;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    @Override
    public String toString() {
        return "Agendamento{" + "idAgendamento=" + idAgendamento + ", id_usuario=" + id_usuario + ", data=" + data + ", horario=" + horario + ", qtdPessoas=" + qtdPessoas + ", responsavel=" + responsavel + ", telefone=" + telefone + '}';
    }

}
