package com.validation.controller;

import java.util.Locale;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.validation.model.User;

@Controller
public class UserController {

	@RequestMapping("/userForm")
	public String showUserForm(Model theModel) {
		theModel.addAttribute("user", new User());

		return "user-form";
	}
	
	
	@RequestMapping("/bmiResult")
	public String showBmiResult(@Valid @ModelAttribute User theUser, BindingResult theBindingResult) {
		if(theBindingResult.hasErrors()) {return "user-form";}
		
		else {return "bmi-result";}
	
	}
	
}
