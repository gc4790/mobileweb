package com.mobileweb.auth.controller;

import java.util.HashMap;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mobileweb.auth.service.LoginService;
import com.mobileweb.model.User;

@Controller
public class AuthenticationController{
	
	@Autowired
	LoginService loginService;
	
	@PostMapping("/validateUser")
	public User saveUser(@RequestBody User user) {
		if(loginService.isAuthrizeUser(user)) {
			return user;
		}else {
			return user;
		}
		
	}
	
	@GetMapping("/getUser")
	public @ResponseBody String getUser() {
		Map<String,Object> u = new HashMap<>();
		loginService.isValidUser("Ganesh");
		return "{userName:Ganesh}";
	}
}