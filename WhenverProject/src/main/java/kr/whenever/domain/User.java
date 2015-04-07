package kr.whenever.domain;

public class User {
	
	private Long id;
	
	private String email;
	
	private String cellPhoneNo;
	
	private String birthDate;
	
	public User() {}
	
	public User(String email, String cellPhoneNo) {
		this.email = email;
		this.cellPhoneNo = cellPhoneNo;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCellPhoneNo() {
		return cellPhoneNo;
	}

	public void setCellPhoneNo(String cellPhoneNo) {
		this.cellPhoneNo = cellPhoneNo;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

}
