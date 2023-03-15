package com.christinac.dojosAndNinjas.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.christinac.dojosAndNinjas.models.Dojo;
import com.christinac.dojosAndNinjas.models.Ninja;
import com.christinac.dojosAndNinjas.services.NinjaService;

@Controller
public class NinjaController {

	@Autowired
	private NinjaService ninjaServ;
	
	@PostMapping("/ninja/create")
	public String createNinja(@Valid @ModelAttribute("newNinja") Ninja newNinja, BindingResult result) {
		if(result.hasErrors()) {
			return "redirect:/ninja/new";
		} else {
			ninjaServ.create(newNinja);
			Dojo dojo = newNinja.getDojo();
			Long dojoId = dojo.getId();
			return "redirect:/dojos/" + dojoId;
		}
	}
}
