package com.epsi.tpecommerce.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.epsi.tpecommerce.entity.Fournisseur;
import com.epsi.tpecommerce.service.FournisseurService;

public class FournisseurAction{

	private FournisseurService fournisseurService;

	public FournisseurAction() {
		super();
		fournisseurService = new FournisseurService();
	}
	
	public String ajouterBDD(HttpServletRequest request, HttpServletResponse response) {
		Fournisseur unFournisseur = new Fournisseur();
		unFournisseur.setNom(request.getParameter("nom"));
		unFournisseur.setEmail(request.getParameter("mail"));
		
		fournisseurService.addFournisseur(unFournisseur);
		
		return index(request, response);
	}
	
	public String index(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("fournisseurs", fournisseurService.getAllFournisseurs());
		
		return "/fournisseur/index.jsp";
	}
}
