package com.fooday.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name= "complain_table")
public class ComplainVo
{
	@Id
	@Column(name="complain_Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "complain_Subject")
	private String complainSubject;
	
	@Column(name = "complainDescription")
	private String complainDescription;
	
	@Column(name = "complain_Date")
	private Date complainDate;
	
	@Column(name = "reply")
	private String reply;
	
	@Column(name = "reply_Date")
	private Date replyDate;
	
	@Column(name = "Status")
	private boolean Status = true;

	@Column(name = "complain_Status")
	private String complainStatus;
	
	@ManyToOne
	LoginVo loginvo;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComplainSubject() {
		return complainSubject;
	}

	public void setComplainSubject(String complainSubject) {
		this.complainSubject = complainSubject;
	}

	public String getComplainDescription() {
		return complainDescription;
	}

	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}

	public Date getComplainDate() {
		return complainDate;
	}

	public void setComplainDate(Date complainDate) {
		this.complainDate = complainDate;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

	public boolean isStatus() {
		return Status;
	}

	public void setStatus(boolean status) {
		Status = status;
	}

	public String getComplainStatus() {
		return complainStatus;
	}

	public void setComplainStatus(String complainStatus) {
		this.complainStatus = complainStatus;
	}

	public LoginVo getLoginvo() {
		return loginvo;
	}

	public void setLoginvo(LoginVo loginvo) {
		this.loginvo = loginvo;
	}
}
