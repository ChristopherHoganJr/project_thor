package com.project.thor.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.thor.services.UserService;

@Controller
public class UserController {

		@Autowired
		private UserService userServ;
		
		@GetMapping("/")
		public String landing() {
			return "Landing.jsp";
		}
}