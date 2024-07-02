package com.todo.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.todo.api.dto.UserDto;
import com.todo.api.entity.User;
import com.todo.api.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@GetMapping("/home")
	public String loginform() {

		return "home";
	}

	@GetMapping("/success")
	public String successform() {

		return "success";
	}

	@GetMapping("/register")
	public String showRegisterForm() {
		return "register"; // This will map to /WEB-INF/views/register.jsp
	}

	@GetMapping("/login")
	public String login() {

		return "login";
	}

	@GetMapping("/update")
	public String update() {

		return "update";
	}

	@GetMapping("/report")
	public String report() {

		return "report";
	}

	@GetMapping("/profile")
	public String profile() {

		return "profile";
	}

	@PostMapping("/registerForm")
	public String registeredForm(@ModelAttribute("user") UserDto userDto, Model model,
			RedirectAttributes redirectAttributes) {
		if (userDto.getPassword().equals(userDto.getConfirmPassword())) {
			this.userService.createUser(userDto);
			redirectAttributes.addFlashAttribute("message", "Data added to database successfully!!!");
			return "home";
		} else {
			model.addAttribute("error", "Passwords do not match.");
			return "register"; // Redirect back to the registration form with an error message
		}
	}

	@PostMapping("/logindata")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		User user = userService.findbyemail(email);
		if (user != null && password.equals(user.getPassword())) {
			return "redirect:/success";
		} else {
			model.addAttribute("error", "Data doesn't match");
			return "/login";
		}
	}

	@PostMapping("updateProfile")
	public String updateProfile(@ModelAttribute User user, Model model) {
		System.out.println("user" + user);
		userService.updatedata(user, user.getEmail());
		model.addAttribute("message", "Profile updated successfully!");
		return "redirect:/success"; // Redirect to the home page or another page as needed
	}

}
