package com.epsi.tpecommerce.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.epsi.tpecommerce.service.CommandeService;
import com.epsi.tpecommerce.service.ProduitService;

public class AccueilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CommandeService commandeService;
	private ProduitService produitService;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		commandeService = new CommandeService();
		produitService = new ProduitService();
		
		String page = "/dashboard.jsp";
		
		request.setAttribute("qteMoyenneCommande", "48"/*commandeService.getQuantiteMoyenneParCommande()*/);
		
		Calendar cal = Calendar.getInstance();
		String mois = new SimpleDateFormat("MM").format(cal.getTime());
		String annee = new SimpleDateFormat("yy").format(cal.getTime());
		request.setAttribute("nbCmdMois", commandeService.getNombreCommandeDuMoisAnnee(mois, annee));
		
		request.setAttribute("meilleurProduit", produitService.getMeilleurProduit().getNom());
		
		this.getServletContext().getRequestDispatcher(page).forward(request, response);
	}

}
