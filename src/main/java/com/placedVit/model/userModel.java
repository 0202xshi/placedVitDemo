package com.placedVit.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mytable")
public class userModel {
	
	
	public userModel(String name, String vitemail, String company, double cgpa, String personalemail,
			String projects, String linkprof, String gitprof, String selection, String typepack, String branch,
			String negotiation, double ctc, double inhand, String positonoff, String booksncourse, String intexp,
			String prpstr, String commonmis, String advice) {
		super();
		this.name = name;
		this.vitemail = vitemail;
		this.company = company;
		this.cgpa = cgpa;
		this.personalemail = personalemail;
		this.projects = projects;
		this.linkprof = linkprof;
		this.gitprof = gitprof;
		this.selection = selection;
		this.typepack = typepack;
		this.branch = branch;
		this.negotiation = negotiation;
		this.ctc = ctc;
		this.inhand = inhand;
		this.positonoff = positonoff;
		this.booksncourse = booksncourse;
		this.intexp = intexp;
		this.prpstr = prpstr;
		this.commonmis = commonmis;
		this.advice = advice;
	}
	public userModel() {}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVitemail() {
		return vitemail;
	}
	public void setVitemail(String vitemail) {
		this.vitemail = vitemail;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public double getCgpa() {
		return cgpa;
	}
	public void setCgpa(double cgpa) {
		this.cgpa = cgpa;
	}
	public String getPersonalemail() {
		return personalemail;
	}
	public void setPersonalemail(String personalemail) {
		this.personalemail = personalemail;
	}
	public String getProjects() {
		return projects;
	}
	public void setProjects(String projects) {
		this.projects = projects;
	}
	public String getLinkprof() {
		return linkprof;
	}
	public void setLinkprof(String linkprof) {
		this.linkprof = linkprof;
	}
	public String getGitprof() {
		return gitprof;
	}
	public void setGitprof(String gitprof) {
		this.gitprof = gitprof;
	}
	public String getSelection() {
		return selection;
	}
	public void setSelection(String selection) {
		this.selection = selection;
	}
	public String getTypepack() {
		return typepack;
	}
	public void setTypepack(String typePack) {
		this.typepack = typePack;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getNegotiation() {
		return negotiation;
	}
	public void setNegotiation(String negotiation) {
		this.negotiation = negotiation;
	}
	public double getCtc() {
		return ctc;
	}
	public void setCtc(double ctc) {
		this.ctc = ctc;
	}
	public double getInhand() {
		return inhand;
	}
	public void setInhand(double inhand) {
		this.inhand = inhand;
	}
	public String getPositonoff() {
		return positonoff;
	}
	public void setPositonoff(String positonoff) {
		this.positonoff = positonoff;
	}
	public String getBooksncourse() {
		return booksncourse;
	}
	public void setBooksncourse(String booksncourse) {
		this.booksncourse = booksncourse;
	}
	public String getIntexp() {
		return intexp;
	}
	public void setIntexp(String intexp) {
		this.intexp = intexp;
	}
	public String getPrpstr() {
		return prpstr;
	}
	public void setPrpstr(String prpstr) {
		this.prpstr = prpstr;
	}
	public String getCommonmis() {
		return commonmis;
	}
	public void setCommonmis(String commonmis) {
		this.commonmis = commonmis;
	}
	public String getAdvice() {
		return advice;
	}
	public void setAdvice(String advice) {
		this.advice = advice;
	}
	@Override
	public String toString() {
		return "userModel [id=" + id + ", name=" + name + ", vitemail=" + vitemail + ", company=" + company + ", cgpa="
				+ cgpa + ", personalemail=" + personalemail + ", projects=" + projects + ", linkprof=" + linkprof
				+ ", gitprof=" + gitprof + ", selection=" + selection + ", typepack=" + typepack + ", branch=" + branch
				+ ", negotiation=" + negotiation + ", ctc=" + ctc + ", inhand=" + inhand + ", positonoff=" + positonoff
				+ ", booksncourse=" + booksncourse + ", intexp=" + intexp + ", prpstr=" + prpstr + ", commonmis="
				+ commonmis + ", advice=" + advice + "]";
	}
	@Id
	private int id;
	private String name;
	private String vitemail;
	private String company;
	private double cgpa;
	private String personalemail;
	private String projects;
	private String linkprof;
	private String gitprof;
	private String selection;
	private String typepack;
	private String branch;
	private String negotiation;
	private double ctc;
	private double inhand;
	private String positonoff;
	private String booksncourse;
	private String intexp;
	private String prpstr;
	private String commonmis;
	private String advice;
	
	
}
