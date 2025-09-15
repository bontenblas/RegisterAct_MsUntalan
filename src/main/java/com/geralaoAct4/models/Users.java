package com.geralaoAct4.models;

public class Users {	
	private int id;
	private static int idCounter = 0;
	
	private String userImage;
	private String firstName;
	private String lastName;
	private String userGender;
	private String userName;
	private String userPass;
	private String userPassConf;
	
	public Users(String userImage, String firstName, String lastName, String userGender, String userName, String userPass, String userPassConf) {
		super();
		this.id = ++idCounter;
		this.userImage = userImage;
		this.firstName = firstName;
		this.lastName = lastName;
		this.userGender = userGender;
		this.userName = userName;
		this.userPass = userPass;
		this.userPassConf = userPassConf;
	}
	
	public int getId() {
		return id;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public String getUserPassConf() {
		return userPassConf;
	}

	public void setUserPassConf(String userPassConf) {
		this.userPassConf = userPassConf;
	}
		
	
}
