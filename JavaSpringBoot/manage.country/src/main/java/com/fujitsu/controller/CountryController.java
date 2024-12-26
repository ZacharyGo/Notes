package com.fujitsu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.fujitsu.model.Country;
import com.fujitsu.service.CountryService;

@Controller
public class CountryController {

	@Autowired
	private CountryService countryService;
	
	// display list of countries
	@GetMapping("/")
	/*public String viewHomePage(Model model) {
		model.addAttribute("listCountries", countryService.getAllCountries());
        return "main";
	}*/
	public String viewHomePage(Model model) {
		model.addAttribute("listCountries", countryService.getAllCountries("Id",true));
        return "main";
	}
	
	/*
	 * @GetMapping("/all") public List<Country> getAllCountries(Model model) {
	 * return countryService.getAllCountries(); }
	 */
	
	@PostMapping("/add")
	public String addCountry(@RequestBody Country country) {
		// service class method who can save country
		System.out.println(countryService.saveCountry(country));
		return "redirect:/";
	}
	
	/*
	 * @GetMapping("/update/{id}") public Optional<Country>
	 * showUpdateCountry(@PathVariable int id) { Optional<Country> country =
	 * countryService.getCountry(id); return country; }
	 */
	@PutMapping("/update")
	public String updateCountry(@RequestBody Country country) {
		System.out.println(countryService.saveCountry(country));
		return "redirect:/";
	}
	
	@DeleteMapping("/delete/{id}")
	public String deleteCountry(@PathVariable int id) {
		System.out.println(countryService.deleteCountry(id));
		
		return "redirect:/";
	}
	
}
