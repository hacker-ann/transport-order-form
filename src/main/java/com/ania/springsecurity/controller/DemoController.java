package com.ania.springsecurity.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class DemoController {

	
	/*
	 * @InitBinder public void initBinder(WebDataBinder binder) { SimpleDateFormat
	 * dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	 * dateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
	 * dateFormat.setLenient(false);
	 * binder.registerCustomEditor(java.util.Date.class, new
	 * CustomDateEditor(dateFormat, false)); }
	 */
	 
    
	@GetMapping("/")
	public String showForm(Model theModel) {

		// create a object
		Transport theTransport = new Transport();

		// add object to the model
		theModel.addAttribute("transport", theTransport);
		return "transportOrder-form";
	}

	@PostMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("transport") Transport theTransport,
			BindingResult theBindingResult) {
		if (theBindingResult.hasErrors()) {
			return "transportOrder-form";
		} else {
			return "transportOrder-confirmation";
		}
	}
}
