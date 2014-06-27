package com.epsi.tpecommerce.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.epsi.tpecommerce.action.FournisseurAction;

/**
 * Servlet implementation class FournisseurServlet
 */
public class FournisseurServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private FournisseurAction fournisseurAction;

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
		fournisseurAction = new FournisseurAction();
		String page = "error.jsp";
		
		if(request.getParameter("action").equals("ajout")){
			page = "/fournisseur/ajout.jsp";
		}
		else if(request.getParameter("action").equals("ajouterBDD")){
			page = fournisseurAction.ajouterBDD(request, response);
		}
		else if(request.getParameter("action").equals("index")){
			page = fournisseurAction.index(request, response);
		}
		this.getServletContext().getRequestDispatcher(page).forward(request, response);
	}

}
