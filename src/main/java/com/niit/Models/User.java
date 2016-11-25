package com.niit.Models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.springframework.stereotype.Component;
@Component
@Entity
public class User {
	@Id
	@Size(min=5, max=10, message="Your name should be between 5 - 10 characters.")
	private String username;
	@Size(min=3, message="Your name should be atleast 3 characters.")
	private String firstname;
	@Size(min=3, message="Your name should be atleast 3 characters.")
	private String lastname;
	
	@NotNull(message="Please select a password")
    @Length(min=5, max=10, message="Password should be between 5 - 10 charactes")
	private String password;
	@Transient
	private String confirmpass;
	private String roles;
	private Boolean enabled=true;

	
	
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpass() {
		return confirmpass;
	}
	public void setConfirmpass(String confirmpass) {
		this.confirmpass = confirmpass;
	}
	public String getRoles() {
		return roles;
	}
	public void setRoles(String roles) {
		this.roles = roles;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	

}
