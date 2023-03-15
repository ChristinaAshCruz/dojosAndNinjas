package com.christinac.dojosAndNinjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.christinac.dojosAndNinjas.models.Dojo;
import com.christinac.dojosAndNinjas.services.DojoService;

@Controller
public class HomeController {

	@Autowired
	private DojoService dojoServ;
	
	@GetMapping("/")
	public String index(@ModelAttribute("newDojo") Dojo newDojo) {
		return "index.jsp";
	}
	
	@GetMapping("/dojos/{id}")
	public String viewDojo(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoServ.findDojoById(id);
		model.addAttribute("thisDojo", dojo);
		return "dashboard.jsp";
	}
	
	@GetMapping("/ninja/new")
	public String newNinja(@ModelAttribute("newNinja") Ninja newNinja) {
		return "newNinja.jsp";
	}
}
