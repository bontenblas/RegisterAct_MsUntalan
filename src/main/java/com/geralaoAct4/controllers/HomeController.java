package com.geralaoAct4.controllers;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.geralaoAct4.models.Users;

@Controller
public class HomeController {
	
	ArrayList<Users> regUser = new ArrayList<>();
	
	@GetMapping("/register")
	public String animeForm(Model mv, @RequestParam(required = false) String error) {
		
		if("blankField".equals(error)) {
			mv.addAttribute("errorMessage", "Please fill out all fields");
		} else if ("userChar".equals(error)) {
			mv.addAttribute("errorMessage", "Username must be 8 or more characters");
		} else if ("passChar".equals(error)) {
			mv.addAttribute("errorMessage", "Password must be 8 or more characters");			
		} else if ("userExists".equals(error)) {
			mv.addAttribute("errorMessage", "Username already taken");	
		} else if ("conf".equals(error)) {
			mv.addAttribute("errorMessage", "Passwords do not match!");
		}
		
		return "Act4Register.jsp";
	}
	
	@PostMapping("/All/Users")
	public String newUser(Model mv,
			@RequestParam String uImage, @RequestParam String fName, 
			@RequestParam String lName, @RequestParam String gender, 
			@RequestParam String uName, @RequestParam String uPass, 
			@RequestParam String passConf) {
		
		if(uImage.isBlank() || fName.isBlank() || 
				lName.isBlank() || gender.isBlank() || 
				uName.isBlank() || uPass.isBlank() || passConf.isBlank()) {
			return "redirect:/register?error=blankField";
		} else if (uName.length() < 8) {
			return "redirect:/register?error=userChar";
		} else if (uPass.length() < 8) {
			return "redirect:/register?error=passChar";
		} else if (!uPass.equals(passConf)) {
			return "redirect:/register?error=conf";
		}
		
		for (Users user : regUser) {
	        if (user.getUserName().equals(uName)) {
	            return "redirect:/register?error=userExists";
	        }
		}
		
		Users newUser = new Users(uImage, fName, lName, gender, uName, uPass, passConf);
		regUser.add(newUser);
		
		mv.addAttribute("newUser", newUser);
		
		return "redirect:/All/Users";
	}
	
	@GetMapping("/All/Users")
	public String displayData(Model mv) {
		mv.addAttribute("regUser", regUser);
		
		return "Act4Display.jsp";
	}
	
	@PostMapping("/User/Delete")
	public String deleteUser(@RequestParam String delUser){
		for (int i = 0 ; i < regUser.size() ; i++) {
			if (regUser.get(i).getUserName().equals(delUser)) {
				regUser.remove(i);
				break;
			}
		}
		
		return "redirect:/All/Users";
	}
	
	@GetMapping("User/Update/{id}")
	public String userUpdate(@PathVariable int id, Model mv) {
		
		Users updateUser = null;
		
		for(int i = 0 ; i < regUser.size(); i++) {
			if(regUser.get(i).getId() ==id) {
				updateUser = regUser.get(i);
				break;
			}
		}
		
		mv.addAttribute("user", updateUser);
		return "Act5UpdateForm.jsp";
	}
	
	@PostMapping("/User/Update")
	public String Update(@RequestParam Integer id,
			@RequestParam String uImage, @RequestParam String fName, 
			@RequestParam String lName, @RequestParam String gender, 
			@RequestParam String uName, @RequestParam String uPass, 
			@RequestParam String passConf) {
		
		for(Users user : regUser) {
			if(user.getId() == id) {
				user.setUserImage(uImage);
				user.setFirstName(fName);
				user.setLastName(lName);
				user.setUserGender(gender);
				user.setUserName(uName);
				user.setUserPass(uPass);
				user.setUserPassConf(passConf);
				break;
			}
		}
		
		return "redirect:/All/Users";
	}
}
