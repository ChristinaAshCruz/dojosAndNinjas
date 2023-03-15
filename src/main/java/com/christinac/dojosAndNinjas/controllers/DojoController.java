package com.christinac.dojosAndNinjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.christinac.dojosAndNinjas.models.Dojo;
import com.christinac.dojosAndNinjas.services.DojoService;

@Controller
@RequestMapping("/dojo")
public class DojoController {

	@Autowired
	private DojoService dojoServ;
	
	@PostMapping("/create")
	public String createDojo(@Valid @ModelAttribute("newDojo") Dojo newDojo, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		}
		Dojo dojo = dojoServ.create(newDojo);
		Long dojoId = dojo.getId();
		return "redirect:/dojos/" + dojoId;
	}
	
	
}
