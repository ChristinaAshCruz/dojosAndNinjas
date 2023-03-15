package com.christinac.dojosAndNinjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.christinac.dojosAndNinjas.models.Dojo;
import com.christinac.dojosAndNinjas.repositories.DojoRepository;

@Service
public class DojoService {
	
	@Autowired
	private DojoRepository dojoRepo;
	
	public List<Dojo> findAll(){
		return dojoRepo.findAll();
	}
	
	public Dojo create(Dojo d) {
		return dojoRepo.save(d);
	}
	
	public Dojo findDojoById(Long id) {
		// you have to save your object as an *optional*
		
		Optional<Dojo> optionalBook = dojoRepo.findById(id);
		if(optionalBook.isPresent()) {
			return optionalBook.get();
		} else {
			return null;
		}
	}
	
	
}
