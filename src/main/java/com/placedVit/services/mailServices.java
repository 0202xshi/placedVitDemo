package com.placedVit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.placedVit.model.mailUser;


@Service
public class mailServices {
	@Autowired
	private JavaMailSender javaMailSender;
	
	public mailServices(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}
	public void sendEmail(mailUser user) throws MailException {

		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(user.getTo());
		mail.setSubject(user.getSubject());
		mail.setText(user.getMsg());

		/*
		 * This send() contains an Object of SimpleMailMessage as an Parameter
		 */
		javaMailSender.send(mail);
	}

}
