package com.fujitsu.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fujitsu.dao.CountryDao;
import com.fujitsu.model.Country;

@Service
public class CountryService {

	@Autowired
	private CountryDao dao;

	public Optional<Country> getCountry(int id) {
		return dao.findById(id);
	}

	public List<Country> getAllCountries(String sortColumn, boolean asc) {
		// return dao.findAll();
		List<Country> countries = dao.findAll();

		/*
		 * Collections.sort(countryList, (o1, o2) -> (int)o1.getId() - (int)o2.getId());
		 */
		switch (sortColumn.toLowerCase()) {
		case "id":
			if (asc) {
				Collections.sort(countries, (a, b) -> ((int) (a.getId() - b.getId())));
			} else {
				Collections.sort(countries, (a, b) -> ((int) (b.getId() - a.getId())));
			}
			
			break;
		case "name":
			if (asc) {
				Collections.sort(countries, (a, b) -> (a.getDescription()).compareTo(b.getDescription()));
			} else {
				Collections.sort(countries, (a, b) -> (b.getDescription()).compareTo(a.getDescription()));
			}
			break;
		case "description":
			if (asc) {
				Collections.sort(countries, (a, b) -> (a.getName()).compareTo(b.getName()));
				break;
			} else {
				Collections.sort(countries, (a, b) -> (b.getName()).compareTo(a.getName()));
			}
			
		case "code":
			if (asc) {
				Collections.sort(countries, (a, b) -> (a.getCode()).compareTo(b.getCode()));
			} else {
				Collections.sort(countries, (a, b) -> (b.getCode()).compareTo(a.getCode()));
			}			
			break;
		}

		return countries;
	}

	/*
	 * public String addCountry(Country country) { dao.save(country); return
	 * "New Country has been added into DAtabase, id number :" + country.getId(); }
	 * 
	 * public String updateCountry(Country country) { dao.save(country); return
	 * "id number is updated:" + country.getId(); }
	 */
	public String saveCountry(Country country) {
		dao.save(country);
		return "New Strudent has been added into DAtabase, id number :" + country.getId();
	}

	public String deleteCountry(int id) {
		// Optional<Country> country = dao.findById(id) //.getById(id);
		// dao.delete(country);
		dao.deleteById(id);
		return "id number is deleted:" + id;
	}

}
