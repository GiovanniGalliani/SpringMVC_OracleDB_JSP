package com.academy.controller;


import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.academy.architecture.dao.ImpiegatoDAO;
import com.academy.businesscomponent.model.Impiegato;

@Controller
public class ImpiegatoController {
	@Autowired
	ImpiegatoDAO impiegatoDAO;

	@RequestMapping("/impform")
	public String visualizzaForm(Model m) {
		m.addAttribute("impiegato", new Impiegato());
		return "paginaform";
	}

	@RequestMapping("/impreport")
	public ModelAndView visualizzaForm() {
		List<Impiegato> lista = impiegatoDAO.getImpiegati();
		return new ModelAndView("paginareport", "lista", lista);
	}

	@RequestMapping(value = "/salva", method = RequestMethod.POST)
	public ModelAndView creaImpiegato(@Valid @ModelAttribute("impiegato") Impiegato impiegato, BindingResult br) {
		if (br.hasErrors()) {
			return new ModelAndView("paginaform", "command", impiegato);
		} else {
			impiegatoDAO.create(impiegato);
			return new ModelAndView("forward:/impreport");
		}
	}
	
	@RequestMapping("/cancella/{id}")
	public ModelAndView creaImpiegato(@PathVariable long id) {
		impiegatoDAO.delete(id);
		return new ModelAndView("forward:/impreport");
	}
	
	@RequestMapping("/modificatemp/{id}")
	public ModelAndView modificaTemp(@PathVariable long id) {
		Impiegato impiegato = impiegatoDAO.getById(id);
		return new ModelAndView("paginamodifica", "command", impiegato);
		
	}
	
	@RequestMapping(value = "/modifica", method = RequestMethod.POST)
	public ModelAndView modificaImpiegato(Impiegato impiegato) {
		impiegatoDAO.update(impiegato);
		return new ModelAndView("forward:/impreport");
	}
}