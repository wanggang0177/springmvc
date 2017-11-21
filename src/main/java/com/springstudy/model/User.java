package com.springstudy.model;

import java.io.Serializable;


public class User implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public User()
	{
		
	}
	
	String userName;
	
	String passWord;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
}
