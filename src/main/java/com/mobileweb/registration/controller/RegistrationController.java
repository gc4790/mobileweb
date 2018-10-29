package com.mobileweb.registration.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.mobileweb.registration.dto.RegistrationDTO;
import com.mobileweb.registration.service.RegistrationService;

@Controller
public class RegistrationController {
	
	@Autowired
	private RegistrationService registrationService;

	@PostMapping("/saveRegistration")
	public  ResponseEntity<RegistrationDTO> saveRegistration(@RequestBody RegistrationDTO registrationObj) {
		System.out.println(registrationObj);
		RegistrationDTO regDTO  = registrationService.saveRegistration(registrationObj);
		return new ResponseEntity<RegistrationDTO>(regDTO,HttpStatus.OK);
		
	}

}
