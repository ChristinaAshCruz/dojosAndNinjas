package com.christinac.dojosAndNinjas.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.christinac.dojosAndNinjas.models.Dojo;
import com.christinac.dojosAndNinjas.models.Ninja;
import com.christinac.dojosAndNinjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	@Autowired
	private NinjaRepository ninjaRepo;
	
	public List<Ninja> findAll(){
		return ninjaRepo.findAll();
	}
	
	public List<Ninja> findAllByDojo(Dojo d){
		return ninjaRepo.findAllByDojo(d);
	}
}
