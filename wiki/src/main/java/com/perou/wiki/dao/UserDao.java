package com.perou.wiki.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import com.perou.wiki.domaine.User;
import com.perou.wiki.util.DbUtil;


public class UserDao {

	private Connection connec;

	public UserDao(Connection connec) {
		super();
		this.connec = DbUtil.getConnection();
	}

	public Connection getConnec() {
		return connec;
	}

	public void setConnec(Connection connec) {
		this.connec = connec;
	}

	public void add(User urs) {
		try {
			PreparedStatement ps = connec
					.prepareStatement("INSERT INTO user(nom, prenom,Username, Email, password) VALUES(?,?,?,?,?)");
			ps.setString(1, urs.getNom());
			ps.setString(2, urs.getPrenom());
			ps.setString(3, urs.getLogin());
			ps.setString(4, urs.getMail());
			ps.setString(5, urs.getMdp());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public void sup(String ref) {
		
		try {
			PreparedStatement ps = connec.prepareStatement("DELETE FROM user  WHERE Email=?)");
			ps.setString(4, ref);
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public Map UserList() {
		Map<String, User> lists = new HashMap<String, User>();
		PreparedStatement ps;
		try {
			ps = connec.prepareStatement("SELECT * FROM user ");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User p = new User();
				p.setNom(rs.getString("nom"));
				p.setPrenom(rs.getString("prenom"));
				p.setLogin(rs.getString("Username"));
				p.setMail(rs.getString("Email"));
				p.setMdp(rs.getString("password"));
				lists.put(rs.getString("Email"), p);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return lists;
	}
	public User getProduit(String ref) {
		User p = null;
		try {
			PreparedStatement ps = connec.prepareStatement("SELECT * FROM produits WHERE ref_prod= ?");
			ps.setString(1, ref);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				p = new User();
				p.setNom(rs.getString("nom"));
				p.setPrenom(rs.getString("prenom"));
				p.setLogin(rs.getString("Username"));
				p.setMail(rs.getString("Email"));
				p.setMdp(rs.getString("password"));
			}
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// Géneration une exception non suivie qui vient de runtimeexception
		if (p == null)
			throw new RuntimeException("Utilisateur " + ref + " introuvable");
		return p;
	}
	
	public void update(User urs) {
		
		try {
			PreparedStatement ps = connec
					.prepareStatement("UPDATE produits set designation=?, prix=?, quantite=? WHERE ref_prod=?)");

			ps.setString(1, urs.getNom());
			ps.setString(2, urs.getPrenom());
			ps.setString(3, urs.getLogin());
			ps.setString(4, urs.getMail());
			ps.setString(5, urs.getMdp());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
