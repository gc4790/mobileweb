package com.mobileweb.registration.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.mobileweb.model.User;
import com.mobileweb.registration.dao.RegistrationDAO;
import com.mobileweb.registration.model.RegistrationDTO;

@Service
public class RegistrationService {
	
	@Autowired
	private RegistrationDAO regtrationDAO;

	public RegistrationDTO saveRegistration(final RegistrationDTO registrationObj) {
		if(registrationObj.getUserName() != null) {
			
		}
		return regtrationDAO.saveRegistration(registrationObj);
	}
	

}
