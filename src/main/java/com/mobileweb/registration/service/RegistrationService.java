package com.mobileweb.registration.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import com.mobileweb.registration.dao.RegistrationDAO;
import com.mobileweb.registration.dto.RegistrationDTO;

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
