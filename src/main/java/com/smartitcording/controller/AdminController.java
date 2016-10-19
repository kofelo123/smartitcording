package com.smartitcording.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smartitcording.service.AdminService;
import com.smartitcording.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	private AdminService service;
	
	@RequestMapping(value="/userlist" , method= RequestMethod.GET)
	public void userlist(){
		
	}
	
}
