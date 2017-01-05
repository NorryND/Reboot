package com.niit.Models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;
@Component
@Entity
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;
	
	@Size(min=5, max=10, message="Your name should be between 5 - 10 characters.")
	private String username;
	@Pattern(regexp="^[A-Za-z]+$")
	@Size(min=3, message="Your name should be atleast 3 characters.")
	private String firstname;
	@Pattern(regexp="^[A-Za-z]+$")
	@Size(min=3, message="Your name should be atleast 3 characters.")
	private String lastname;
	
	@NotBlank(message="Email Cannot be Empty")
	@Email(message="Enter Valid Email")
	private String email;
	
	@NotBlank(message="Please select a password")
    @Length(min=5, max=10, message="Password should be between 5 - 10 charactes")
	private String password;
	@Transient
	private String confirmpass;
	private String roles;
	private Boolean enabled=true;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
