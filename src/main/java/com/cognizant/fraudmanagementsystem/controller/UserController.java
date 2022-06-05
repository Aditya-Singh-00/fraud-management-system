package com.cognizant.fraudmanagementsystem.controller;

import java.util.Optional;

import javax.validation.Valid;

import com.cognizant.fraudmanagementsystem.model.User;
import com.cognizant.fraudmanagementsystem.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    
    @Autowired
    private UserService userService;

    @GetMapping(value = "/user-registration")
    public String showRegistrationPage(ModelMap model) {
        model.addAttribute("user", new User());
        return "user/registration-form";
    }

    @PostMapping(value = "/user-registration")
	public String addUser(ModelMap model, @Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			return "user/registration-form";
		}
		if (userService.addUser(user)) {
            return "redirect:/user-details-submitted";
        } else {
            model.put("error", "Something went wrong while adding user. Try again.");
            return "redirect:/user-registration";
        }
	}

    @GetMapping(value = "/user-details-submitted")
    public String userDetailsSubmitted() {
        return "user/submitted";
    }

    @GetMapping(value = "/user-login")
    public String showLoginPage() {
        return "user/login-form";
    }

    @PostMapping(value = "/user-login") 
    public String login(
        ModelMap model, 
        @RequestParam String userId, 
        @RequestParam String password
    ){
		Optional<User> user = userService.isValid(userId,password);

		if(user.isEmpty()) {
			model.put("error","Invalid User Credentials");
		    return "user/login-form";
		}
        
		if(user.get().getIsAuthorized() == 0) {
			model.put("error", "Your Registration Request is Rejected by Admin");
			return "user/login-form";
		}
		else if(user.get().getIsAuthorized() == 1) {
			model.put("error","Your Registration is still pending");
			return "user/login-form";
		}

		model.put("user", user);
		return "redirect:/fraud-analyzer-dashboard";
	}

    @GetMapping(value = "/fraud-analyzer-dashboard")
    public String showFraudAnalyzerPage() {
        return "user/fraud-analyzer-dashboard";
    }

}
