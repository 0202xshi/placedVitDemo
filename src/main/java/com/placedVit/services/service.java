package com.placedVit.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.placedVit.Repo.userRepo;
import com.placedVit.model.userModel;



@Service
@Transactional
public class service {
	
	@Autowired 
	private final userRepo userrepo;
	public service(userRepo userrepo) {
		this.userrepo = userrepo;
	}
	public void saveMyUser(userModel user) {
		userrepo.save(user);
		
	}
	public List<userModel> showAllUsers(){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			users.add(user);
		}
		return users;            //used in jsp to show the users
	}
	
	public List<userModel> showAllUsersId(int x){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			if(user.getId()==x) {
			users.add(user);}
		}
		return users;            //used in jsp to show the users
	}
	
	//users advices 
	public List<String> adives(){
		List<String> users = new ArrayList<String>();
		for(userModel user:userrepo.findAll()) {
			
			users.add(user.getAdvice());}
		return users;            //used in jsp to show the users
	}
	
	
	
	public List<userModel> usersPpoSuperDream(){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			String str1 = user.getSelection();
			int a = Integer.parseInt(str1);
			int b = Integer.parseInt("ppo");
			if(a==b){
			users.add(user);}
		}
		return users;            //used in jsp to show the users
	}
	
	//shorting data for Links on ppo Page
	public List<userModel> showPpoSuperDream(){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			if(user.getSelection().equals("ppo")&&user.getTypepack().equals("superdream")){
			users.add(user);}
		}
		return users;      
	}
	
	public List<userModel> showPpoDream(){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			if((user.getSelection().equals("ppo"))&&(user.getTypepack().equals("dream"))){
			users.add(user);}
		}
		return users;            
	}
	public List<userModel> showPpoRegular(){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			if((user.getSelection().equals("ppo"))&&(user.getTypepack().equals("regular"))){
			users.add(user);}
		}
		return users;            
	}
	
	
	
	// Sorting data for Links on Placement page 
	public List<userModel> showPlacementSuperDream(){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			if(user.getSelection().equals("placement")&&user.getTypepack().equals("superdream")){
			users.add(user);}
		}
		return users;      
	}
	
	public List<userModel> showPlacementDream(){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			if((user.getSelection().equals("placement"))&&(user.getTypepack().equals("dream"))){
			users.add(user);}
		}
		return users;            
	}
	public List<userModel> showPlacementRegular(){
		List<userModel> users = new ArrayList<userModel>();
		for(userModel user:userrepo.findAll()) {
			if((user.getSelection().equals("placement"))&&(user.getTypepack().equals("regular"))){
			users.add(user);}
		}
		return users;            
	}
	
	// Sorting data for Links on Internship page 
		public List<userModel> showInternshipSuperDream(){
			List<userModel> users = new ArrayList<userModel>();
			for(userModel user:userrepo.findAll()) {
				if(user.getSelection().equals("internship")&&user.getTypepack().equals("superdream")){
				users.add(user);}
			}
			return users;      
		}
		
		public List<userModel> showInternshipDream(){
			List<userModel> users = new ArrayList<userModel>();
			for(userModel user:userrepo.findAll()) {
				if((user.getSelection().equals("internship"))&&(user.getTypepack().equals("dream"))){
				users.add(user);}
			}
			return users;            
		}
		public List<userModel> showInternshipRegular(){
			List<userModel> users = new ArrayList<userModel>();
			for(userModel user:userrepo.findAll()) {
				if((user.getSelection().equals("internship"))&&(user.getTypepack().equals("regular"))){
				users.add(user);}
			}
			return users;            
		}
		
	
}
