package com.placedVit.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.placedVit.model.userModel;
import com.placedVit.services.service;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Autowired
	private service userservice;

	@GetMapping("/saveUser")
	public String saveUser(@RequestParam String name,@RequestParam String vitemail,@RequestParam String company,@RequestParam double cgpa,@RequestParam String personalemail,
			@RequestParam String projects,@RequestParam String linkprof,@RequestParam String gitprof,@RequestParam String selection,@RequestParam String typepack,@RequestParam String branch,@RequestParam String negotiation,@RequestParam double ctc,@RequestParam double inhand,
			@RequestParam String positonoff,@RequestParam String booksncourse,@RequestParam String intexp,@RequestParam String prpstr,@RequestParam String commonmis,
			@RequestParam String advice) {
		userModel user = new userModel(name,vitemail,company,cgpa,personalemail,projects,linkprof,gitprof,selection,typepack, branch, negotiation,ctc,inhand,positonoff,booksncourse,intexp,prpstr,commonmis,advice);
		userservice.saveMyUser(user);
		return "User Saved";

}

}
