package com.placedVit.model;

import org.springframework.stereotype.Component;

@Component
public class mailUser {
	private String to;
	private String Subject;
	private String msg;
	public mailUser() {}
	public mailUser(String subject, String msg) {
		super();
		Subject = subject;
		this.msg = msg;
	}
	public String getTo() {
		return to;
	}
	@Override
	public String toString() {
		return "emailUser [to=" + to + ", Subject=" + Subject + ", msg=" + msg + "]";
	}
	public void setTo(String to) {
		this.to = to;
	}
	public String getSubject() {
		return Subject;
	}
	public void setSubject(String subject) {
		Subject = subject;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

}
