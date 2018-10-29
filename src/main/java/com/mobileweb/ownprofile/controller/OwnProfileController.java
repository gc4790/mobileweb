package com.mobileweb.ownprofile.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.mobileweb.ownprofile.service.OwnProfileService;

@Controller
public class OwnProfileController {
	
	@Autowired
	private OwnProfileService opService;

}
