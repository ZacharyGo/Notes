package com.fujitsu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fujitsu.model.Country;

public interface CountryDao  extends JpaRepository<Country, Integer>{

	
}