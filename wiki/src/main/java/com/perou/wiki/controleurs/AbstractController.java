package com.perou.wiki.controleurs;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.perou.wiki.controleurs.Action;

/**
 * Servlet implementation class abstractCtrls
 */
public abstract class AbstractController extends HttpServlet {
	private static final long serialVersionUID = -5732747893904459131L;
	private String target;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Action action = Action.valueOf(request.getParameter("action"));
		switch (action) // selon parametre:action
		{

		case CREATE:
		case EDIT:
			doEdit(request, response);
			break;

		case FIND:
			doFind(request, response);
			break;
		case CONNEXION:
			doConnect(request, response);
			break;

		case LIST:
		default:
			doList(request, response);
		}
		doDispatch(request, response); // dispatch avec target defini
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Action action = Action.valueOf(request.getParameter("action"));

		switch (action) // selon parametre:action
		{
		case SAVE:
			doSave(request, response);
			break;

		case DELETE:
			doDel(request, response);
			break;

		case UPDATE:
			doUpdate(request, response);
			break;

		default:
			doList(request, response);

		}

		doDispatch(request, response); // dispatch avec target defini dans
										// doGet, doList...
	}

	private void doDispatch(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("UserController.doDispatch()" + target);
		request.getRequestDispatcher(target).forward(request, response);
	}

	protected abstract void doList(HttpServletRequest request, HttpServletResponse response);

	protected abstract void doEdit(HttpServletRequest request, HttpServletResponse response);

	protected abstract void doCreate(HttpServletRequest request, HttpServletResponse response);

	protected abstract void doFind(HttpServletRequest request, HttpServletResponse response);

	protected abstract void doConnect(HttpServletRequest request, HttpServletResponse response);

	protected abstract void doSave(HttpServletRequest request, HttpServletResponse response);

	protected abstract void doDel(HttpServletRequest request, HttpServletResponse response);

	protected abstract void doUpdate(HttpServletRequest request, HttpServletResponse response);

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

}