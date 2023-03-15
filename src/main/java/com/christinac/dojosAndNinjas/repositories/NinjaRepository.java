package com.christinac.dojosAndNinjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.christinac.dojosAndNinjas.models.Dojo;
import com.christinac.dojosAndNinjas.models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {

	@Override
	public List<Ninja> findAll();
	
	public List<Ninja> findAllByDojo(Dojo dojo);
}
