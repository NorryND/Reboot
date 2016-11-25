package com.niit.Models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Payment {
	
	
	@Id
	private String uid;
	
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

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	

}