package com.placedVit.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.placedVit.model.mailUser;
import com.placedVit.services.mailServices;

@Controller
@RequestMapping("submitMyForm")
public class mailController {

	@Autowired
	private mailServices notificationService;

	@Autowired
	private mailUser user;
	
	@RequestMapping(method = RequestMethod.POST)
	public String send(HttpServletRequest request) {
		String str1 = request.getParameter("email");
		String str2 = request.getParameter("message");
		String str3 = request.getParameter("name");
		String str4 = "Hi i am "+str3+",\n"+str2;
		user.setTo("placedvit@gmail.com");  
		user.setSubject(str1);
		user.setMsg(str4);
		try {
			notificationService.sendEmail(user);
		} catch (MailException mailException) {
			System.out.println(mailException);
		}
		return "thankYou2";
	}
}
