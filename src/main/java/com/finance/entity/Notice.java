package com.finance.entity;

import java.sql.Timestamp;

/**
 * Notice entity. @author MyEclipse Persistence Tools
 */

public class Notice implements java.io.Serializable {

	// Fields
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String title;
	private String content;
	private String createBy;
	private Timestamp createDate;
	private String vestInCompany;
	private String myid;

	// Constructors

	/** default constructor */
	public Notice() {
	}

	public Notice(Integer id, String title, String content, String createBy, Timestamp createDate, String vestInCompany,
			String myid) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.createBy = createBy;
		this.createDate = createDate;
		this.vestInCompany = vestInCompany;
		this.myid = myid;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public Timestamp getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public String getVestInCompany() {
		return vestInCompany;
	}

	public void setVestInCompany(String vestInCompany) {
		this.vestInCompany = vestInCompany;
	}

	public String getMyid() {
		return myid;
	}

	public void setMyid(String myid) {
		this.myid = myid;
	}

	

}