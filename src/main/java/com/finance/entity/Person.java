package com.finance.entity;

import java.sql.Timestamp;

/**
 * Person entity. @author MyEclipse Persistence Tools
 */

public class Person implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String sex;
	private String nature;
	private String tel;
	private String address;
	private String remark;
	private String idNumber;
	private String creater;
	private Timestamp createDate;
	private String vestInCompany;

	// Constructors

	/** default constructor */
	public Person() {
	}

	/** full constructor */
	public Person(String name, String sex, String nature, String tel,
			String address, String remark, String idNumber, String creater,
			Timestamp createDate, String vestInCompany) {
		this.name = name;
		this.sex = sex;
		this.nature = nature;
		this.tel = tel;
		this.address = address;
		this.remark = remark;
		this.idNumber = idNumber;
		this.creater = creater;
		this.createDate = createDate;
		this.vestInCompany = vestInCompany;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNature() {
		return this.nature;
	}

	public void setNature(String nature) {
		this.nature = nature;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getIdNumber() {
		return this.idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}

	public String getCreater() {
		return this.creater;
	}

	public void setCreater(String creater) {
		this.creater = creater;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public String getVestInCompany() {
		return this.vestInCompany;
	}

	public void setVestInCompany(String vestInCompany) {
		this.vestInCompany = vestInCompany;
	}

}