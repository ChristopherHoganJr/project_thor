package com.project.thor.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.thor.models.Basic_Stats;
import com.project.thor.models.Login_User;
import com.project.thor.models.User;
import com.project.thor.services.Basic_StatsService;
import com.project.thor.services.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userServ;

	@Autowired
	private Basic_StatsService bsServ;

	@GetMapping("/")
	public String landing() {
		return "Landing.jsp";
	}

	@GetMapping("/signup")
	public String create_account(Model model) {
		model.addAttribute("new_user", new User());
		return "CreateAccount.jsp";
	}

	@PostMapping("/signup/register_account")
	public String register_user(@Valid @ModelAttribute("new_user") User new_user, BindingResult result, Model model,
			HttpSession session) {
		userServ.register(new_user, result);

		if (result.hasErrors()) {
			model.addAttribute("invalid_signup", new User());
			return "CreateAccount.jsp";
		} else {
			session.setAttribute("user_id", new_user.getId());
			return "redirect:/home";
		}
	}

	@GetMapping("/login")
	public String login(Model model) {
		model.addAttribute("login_user", new Login_User());
		return "Login.jsp";
	}

	@PostMapping("/login/authenticate_user")
	public String UserLogin(@Valid @ModelAttribute("login_user") Login_User login_user, BindingResult result,
			Model model, HttpSession session) {
		User user = userServ.login(login_user, result);
		if (result.hasErrors()) {
			model.addAttribute("invalid_login", new User());
			return "Login.jsp";
		} else {
			session.setAttribute("user_id", user.getId());
		}
		return "redirect:/home";
	}

	@GetMapping("/home")
	public String home(HttpSession session, Model model) {
		Long user_id = (Long) session.getAttribute("user_id");
		if (user_id == null) {
			return "redirect:/";
		}
		User current_user = userServ.findOneUser(user_id);
		model.addAttribute("current_user", current_user);
		Basic_Stats current_stats = bsServ.findMostRecentBS(user_id);
		model.addAttribute("current_stats", current_stats);

		return "Home.jsp";
	}
}
