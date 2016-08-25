package com.perou.wiki.domaine;

import java.util.Date;

public class Commentaire {

	String contenu;
	Date dateCommentaire;
	int note;
	User user;
	Article article;
	
	public Commentaire(String contenu) {
		super();
		this.contenu = contenu;
		this.dateCommentaire= new Date();
	}

	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}

	public Date getDateCommentaire() {
		return dateCommentaire;
	}

	public void setdateCommentaire(Date dateCommentaire) {
		this.dateCommentaire = dateCommentaire;
	}

	public int getNote() {
		return note;
	}

	public void setNote(int note) {
		this.note = note;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
