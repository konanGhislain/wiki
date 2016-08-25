package com.perou.wiki.domaine;

import java.util.Date;
import java.util.List;

public class Article {

	String titre;
	String contenu;
	User user;
	String etat;
	List<Commentaire> commentaire;
	Date datepublication;
	int score;
	
	public Article(String titre,String contenu,User user){
		this.titre=titre;
		this.contenu=contenu;
		this.user=user;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}

	public String getContenu() {
		return contenu;
	}

	public void setContenu(String contenu) {
		this.contenu = contenu;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String isEtat() {
		return etat;
	}

	public void setEtat(String etat) {
		this.etat = etat;
	}

	public List<Commentaire> getCommentaire() {
		return commentaire;
	}

	public void setCommentaire(List<Commentaire> commentaire) {
		this.commentaire = commentaire;
	}

	public Date getdatepublication() {
		return new Date();
	}

	public void setdatepublication(Date date_publication) {
		this.datepublication = date_publication;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}


	}

