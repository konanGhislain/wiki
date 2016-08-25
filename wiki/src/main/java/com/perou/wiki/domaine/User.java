package com.perou.wiki.domaine;

import java.util.Date;
import java.util.List;

public class User {
	private String nom;
	private String prenom;
	private String mail;
	private Date dateConnec;
	private String login;
	private String mdp;
	private Civilite civilite;
	private Role role;
	
	List<Article> articles;
	
	public User(String nom, String prenom, String mail, String login, String mdp, Civilite civilite) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.login = login;
		this.mdp = mdp;
		this.civilite = civilite;
		this.dateConnec = new Date();
		
	}
	
	

	public User() {
		super();
	}



	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public Date getDateConnec() {
		return this.dateConnec;
	}

	public void setDateConnec(Date dateConnec) {
		this.dateConnec = dateConnec;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public Civilite getCivilite() {
		return civilite;
	}

	public Role getRole() {
		return role;
	}

	public List<Article> getArticles() {
		return articles;
	}

	public void setCivilite(Civilite civilite) {
		this.civilite = civilite;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}

	
	
	
	
}
