package com.project.thor.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Login_User {

	@NotEmpty(message = "Must enter an email address")
	@Email(message = "Must enter a valid email")
	private String email;

	@NotEmpty(message = "Must enter a password")
	@Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
	private String password;

	public Login_User() {
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
