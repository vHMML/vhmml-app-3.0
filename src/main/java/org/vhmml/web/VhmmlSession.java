package org.vhmml.web;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.vhmml.dto.VhmmlSearchParameters;
import org.vhmml.entity.MyListItem;

public class VhmmlSession implements Serializable {

	private static final long serialVersionUID = 1927936235654728720L;

	public VhmmlSession() {
		super();
	}
	
	public static final String PARAM_SESSION = "vhmmlSession";
	
	private String username;
	private boolean passwordExpired;
	private boolean acceptedReadingRoomAgreement;
	private String postLoginDestination;
	private VhmmlSearchParameters savedReadingRoomSearch;
	private Set<MyListItem> myListSaves = new HashSet<>();
	// the user can dismiss global messages, if they do, we keep a list of the ones they've removed so we don't show them anymore
	private List<String> removedMessages = new ArrayList<>();

	public static VhmmlSession getNewSession(HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession != null) {
			httpSession.invalidate();
		}

		return getSession(request);
	}

	public static VhmmlSession getSession(HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		VhmmlSession session = (VhmmlSession) httpSession.getAttribute(PARAM_SESSION);

		if (session == null) {
			session = new VhmmlSession();
			httpSession.setAttribute(PARAM_SESSION, session);
		}

		return session;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public boolean isPasswordExpired() {
		return passwordExpired;
	}

	public void setPasswordExpired(boolean passwordExpired) {
		this.passwordExpired = passwordExpired;
	}

	public boolean isAcceptedReadingRoomAgreement() {
		return acceptedReadingRoomAgreement;
	}

	public void setAcceptedReadingRoomAgreement(boolean acceptedReadingRoomAgreement) {
		this.acceptedReadingRoomAgreement = acceptedReadingRoomAgreement;
	}

	public String getPostLoginDestination() {
		return postLoginDestination;
	}

	public void setPostLoginDestination(String postLoginDestination) {
		this.postLoginDestination = postLoginDestination;
	}

	public VhmmlSearchParameters getSavedReadingRoomSearch() {
		return savedReadingRoomSearch;
	}

	public void setSavedReadingRoomSearch(VhmmlSearchParameters savedReadingRoomSearch) {
		this.savedReadingRoomSearch = savedReadingRoomSearch;
	}

	public List<String> getRemovedMessages() {
		return removedMessages;
	}

	public void setRemovedMessages(List<String> removedMessages) {
		this.removedMessages = removedMessages;
	}

	public Set<MyListItem> getMyListSaves() {
		return myListSaves;
	}

	public void setMyListSaves(Set<MyListItem> myListSaves) {
		this.myListSaves = myListSaves;
	}
	
}
