package com.globacomp.ssystem.c4m.web;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.globacomp.ssystem.data.model.User;

public class WebUser implements Serializable {

	/** Generated Serial Version UID */
	private static final long serialVersionUID = -7299177430577169797L;

	public static final String SESSION_ATTRIBUTE = "USER_SESSION";

	private String id;

	private String username;

	private String salutation;

	private String firstName;

	private String lastName;
	
	private String role;

	private WebUser() {
		// TODO Auto-generated constructor stub
	}
	
	public WebUser(User user) {
		this.id = user.getId();
		this.username = user.getLogin().getUsername();
		this.firstName = user.getFirstName();
		this.lastName = user.getLastName();
	}
	public static final WebUser getUser() {

		RequestAttributes requestAttributes = RequestContextHolder
				.currentRequestAttributes();
		ServletRequestAttributes attributes = (ServletRequestAttributes) requestAttributes;
		HttpServletRequest request = attributes.getRequest();
		HttpSession httpSession = request.getSession(true);

		Object userObject = httpSession.getAttribute(SESSION_ATTRIBUTE);
		if (userObject == null) {
			return new WebUser();
		}

		WebUser user = (WebUser) userObject;
		return user;
	}
	
	public static final WebUser getUser(HttpSession session) {
		WebUser user = (WebUser) session.getAttribute(SESSION_ATTRIBUTE);
		return user;
	}
	public void makePersistant(HttpSession httpSession) {
		httpSession.setAttribute(SESSION_ATTRIBUTE, this);
		httpSession.setMaxInactiveInterval(30*60);
	}

	public void removePersistant(HttpSession httpSession) {
		httpSession.removeAttribute(SESSION_ATTRIBUTE);
	}

	public final String getId() {
		return id;
	}

	public final String getUsername() {
		return username;
	}

	public final String getSalutation() {
		return salutation;
	}

	public final String getFirstName() {
		return firstName;
	}

	public final String getLastName() {
		return lastName;
	}

	public String getRole() {
		return role;
	}
}
