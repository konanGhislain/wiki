package com.perou.wiki.controleurs;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.perou.wiki.domaine.Civilite;
import com.perou.wiki.dao.UserDao;
import com.perou.wiki.domaine.*;

public class UserController extends AbstractController {
	// private static final long serialVersionUID = -5732747893904459131L;
	private Map<String, User> userList;

	public UserController() {
		userList = new HashMap<String, User>();
	}

	@Override
	protected void doCreate(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

	}

	protected void doConnect(HttpServletRequest request, HttpServletResponse response) {
		setTarget("/pages/connexion.jsp");

	}

	protected void doFind(HttpServletRequest request, HttpServletResponse response) {

	}

	protected void doList(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("userList", userList);
		System.out.println("UserController.doList()" + userList);
		setTarget("/pages/list.jsp");

	}

	protected void doUpdate(HttpServletRequest request, HttpServletResponse response) {

	}

	protected void doSave(HttpServletRequest request, HttpServletResponse response) {
		Civilite civilite = Civilite.valueOf(request.getParameter("civilite").toString());
		String nom = request.getParameter("nom").toString();
		String prenom = request.getParameter("prenom").toString();
		String login = request.getParameter("login").toString();
		String pwd = request.getParameter("pwd").toString();
		String pwd2 = request.getParameter("pwd2").toString();
		String mail = request.getParameter("mail").toString();
		if (!(nom.equals("")) && !(prenom.equals("")) && !(login.equals("")) && !(pwd.equals("")) && !(pwd2.equals(""))
				&& !(mail.equals(""))) {
			if (pwd.equals(pwd2)) {
				User urs = new User(nom, prenom, login, pwd, mail, civilite);
				UserDao.add(urs);
				
				//userList.put(mail, urs);
				doList(request, response);
			}
			else{
				setTarget("/pages/connexion.jsp");
			}

			// System.out.println("UserController.doSave()" + userList);

		} else {
			setTarget("/pages/connexion.jsp");
		}
	}

	protected void doEdit(HttpServletRequest request, HttpServletResponse response) {
		String mail = request.getParameter("mail");

		setTarget("/pages/inscription.jsp");

	}

	protected void doDel(HttpServletRequest request, HttpServletResponse response) {
		String mail = request.getParameter("mail");

		userList.remove(mail);

	}

	protected void doHome(HttpServletRequest request, HttpServletResponse response) {
		setTarget("/pages/home.jsp");

	}

}
