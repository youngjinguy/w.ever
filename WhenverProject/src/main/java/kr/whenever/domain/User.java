package kr.whenever.domain;

public class User {
	
	private String id;
	
	private	String password;
	
	private String nickname;
	
	private String cellPhoneNo1;
		
	private String birthDate;
	
	private String school;
	
	private String type;
	
	private String token;
	
	public User() {}
	
	/*
	public User(String email, String cellPhoneNo) {
		
	}
	*/

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getCellPhoneNo1() {
		return cellPhoneNo1;
	}

	public void setCellPhoneNo1(String cellPhoneNo1) {
		this.cellPhoneNo1 = cellPhoneNo1;
	}
	
	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
}
