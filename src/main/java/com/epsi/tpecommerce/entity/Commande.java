package com.epsi.tpecommerce.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name="Commande")
public class Commande {
	
	@Id
	@Column(name="idBDD")
	private int idBDD;
	
    @Column(name="idCommande")
    private int idCommande;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="dateCommande")
    private Calendar dateCommande;

    @Column(name="Qte")
    private int qte;

    @ManyToOne
    @JoinColumn(name="Client", referencedColumnName="idClient")
    private Client client;
    
    
    @ManyToOne
    @JoinColumn(name="Produit", referencedColumnName="idProduit")
    private Produit produit;

	public int getIdCommande() {
		return idCommande;
	}

	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}

	public Calendar getDateCommande() {
		return dateCommande;
	}

	public void setDateCommande(Calendar dateCommande) {
		this.dateCommande = dateCommande;
	}

	public int getQte() {
		return qte;
	}

	public void setQte(int qte) {
		this.qte = qte;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Produit getProduit() {
		return produit;
	}

	public void setProduit(Produit produit) {
		this.produit = produit;
	}
}
