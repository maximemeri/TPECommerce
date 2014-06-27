package com.epsi.tpecommerce.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="StatutCmd")
public class StatutCmd {
    @Id
    @Column(name="idStatutCmd")
    private int idStatutCmd;

    @Column(name="nom")
    private String nom;

    public int getIdStatutCmd() {
        return idStatutCmd;
    }

    public void setIdStatutCmd(int idStatutCmd) {
        this.idStatutCmd = idStatutCmd;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
}
