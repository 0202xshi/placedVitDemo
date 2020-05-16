package com.placedVit.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

//import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.placedVit.model.userModel;
import com.placedVit.services.service;

@Controller
public class ApplicationController {
	
	@RequestMapping("/home")
	public String home() {
		return "home";
		
	}
	@RequestMapping("/form")
	public String form() {
		return "form";
		
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
		
	}
	@RequestMapping("/placement")
	public String placement() {
		return "placement";
		
	}
	@RequestMapping("/ppo")
	public String ppo() {
		return "ppo";
		
	}
	@RequestMapping("/internship")
	public String internship() {
		return "internship";
		
	}
	@RequestMapping("/company")
	public String company() {
		return "company";
		
	}
	/*@RequestMapping("/submitMyForm")
	public String submitMyForm() {
		return "thankYou";
		
	}*/
	@RequestMapping("/userPlacementSuperDream")
	public String userPlacementSuperDream() {
		return "userPlacementSuperDream";
		
	}
	@RequestMapping("/userInternSuperdream")
	public String userInternSuperdream() {
		return "userInternSuperdream";
		
	}
	@RequestMapping("/userInterndream")
	public String userInterndream() {
		return "userInterndream";
		
	}
	@RequestMapping("/userInternRegular")
	public String userInternRegular() {
		return "userInternRegular";
		
	}
	@RequestMapping("/userPlacementRegular")
	public String userPlacementRegular() {
		return "userPlacementRegular";
		
	}
	@RequestMapping("/userPlacementDream")
	public String userPlacementDream() {
		return "userPlacementDream";
		
	}
	@RequestMapping("/internDreamDetails")
	public String internDreamDetails() {
		return "internDreamDetails";
		
	}
	@RequestMapping("/userPpoDream")
	public String userPpoDream() {
		return "userPpoDream";
		
	}
	@RequestMapping("/userPpoRegular")
	public String userPpoRegular() {
		return "userPpoRegular";
		
	}
	@RequestMapping("/formCheck")
	public String formCheck() {
		return "formCheck";
	}
	
	
	@RequestMapping("/Abcd")
	public String Abcd() {
		return "Abcd";
		
	}
	@RequestMapping("/thankYou")
	public String thankYou() {
		return "thankYou";
		
	}
	
	@GetMapping("/advices")
	public String advices(HttpServletRequest request) {
		request.setAttribute("users", userservice.adives());
		request.setAttribute("mode", "ALL_USERS");
		return "advices";
	}
	
	@Autowired
	private service userservice;
	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute userModel user,BindingResult bindingresult, HttpServletRequest request ) {
		userservice.saveMyUser(user);
		return "thankYou";
	}
	
	
	
	@GetMapping("/{id}")
	public String showById(@PathVariable("id") int id,HttpServletRequest request) {
		request.setAttribute("users", userservice.showAllUsersId(id));
		request.setAttribute("mode", "USERS_BY_ID");
		return "userById2";
	}
	
	//getting request for ppo page
	@GetMapping("/showuserPpoSuperDream")
	public String showPpoSuperDream(HttpServletRequest request) {
		request.setAttribute("users", userservice.showPpoSuperDream());
		request.setAttribute("mode", "ALL_USERS");
		return "userPpoSuperDream";
	}
	
	@GetMapping("/showuserPpoDream")
	public String showPpoDream(HttpServletRequest request) {
		request.setAttribute("users", userservice.showPpoDream());
		request.setAttribute("mode", "ALL_USERS");
		return "userPpoDream";
	}
	@GetMapping("/showuserPpoRegular")
	public String showPpoRegular(HttpServletRequest request) {
		request.setAttribute("users", userservice.showPpoRegular());
		request.setAttribute("mode", "ALL_USERS");
		return "userPpoRegular";
	}
	
	
	//getting request for placement pages 
	@GetMapping("/showuserPlacementSuperDream")
	public String showPlacementSuperDream(HttpServletRequest request) {
		request.setAttribute("users", userservice.showPlacementSuperDream());
		request.setAttribute("mode", "ALL_USERS");
		return "userPlacementSuperDream";
	}
	
	@GetMapping("/showuserPlacementDream")
	public String showPlacementDream(HttpServletRequest request) {
		request.setAttribute("users", userservice.showPlacementDream());
		request.setAttribute("mode", "ALL_USERS");
		return "userPlacementDream";
	}
	@GetMapping("/showuserPlacementRegular")
	public String showPlacementRegular(HttpServletRequest request) {
		request.setAttribute("users", userservice.showPlacementRegular());
		request.setAttribute("mode", "ALL_USERS");
		return "userPlacementRegular";
	}
	
	
	
	//getting request for Internship pages 
	@GetMapping("/showuserInternshipSuperDream")
	public String showInternshipSuperDream(HttpServletRequest request) {
		request.setAttribute("users", userservice.showInternshipSuperDream());
		request.setAttribute("mode", "ALL_USERS");
		return "userInternSuperdream";
	}
	
	@GetMapping("/showuserInternshipDream")
	public String showInternshipDream(HttpServletRequest request) {
		request.setAttribute("users", userservice.showInternshipDream());
		request.setAttribute("mode", "ALL_USERS");
		return "userInternDream";
	}
	@GetMapping("/showuserInternshipRegular")
	public String showInternshipRegular(HttpServletRequest request) {
		request.setAttribute("users", userservice.showInternshipRegular());
		request.setAttribute("mode", "ALL_USERS");
		return "userInternRegular";
	}
	
}
