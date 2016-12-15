package com.niit.Models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Payment implements Serializable{
	
	private static final long serialVersionUID = -5592061788047025576L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String pid;
	
	@Transient
	private String cno;
	
	@Transient
	private String cname;
	
	@Transient
	private String ctype;
	
	@Transient
	private String exdate;
	
	@Transient
	private String cvno;
	
	private Double total;
	
	private String username;
	
	private String bid;

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCtype() {
		return ctype;
	}

	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public String getExdate() {
		return exdate;
	}

	public void setExdate(String exdate) {
		this.exdate = exdate;
	}

	public String getCvno() {
		return cvno;
	}

	public void setCvno(String cvno) {
		this.cvno = cvno;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	

}
