package com.finance.entity;

/**
 * Companyinformation entity. @author MyEclipse Persistence Tools
 */

public class BusinessManagement implements java.io.Serializable {

	// Fields

	private Integer id;
	private String companyName;
	private String companyLegalPerson;
	private String companyNature;
	private String legalPersonContact;
	private Float registeredCapital;
	private String realName;
	private String install;
	private String qualifications;
	private String address;
	private String remarks;
	private String imageName;
	private String businessScope;

	// Constructors

	/** default constructor */
	public BusinessManagement() {
	}

	/** full constructor */
	public BusinessManagement(String companyName, String companyLegalPerson,
			String companyNature, String legalPersonContact,
			Float registeredCapital, String realName, String install,
			String qualifications, String address, String remarks,
			String imageName, String businessScope) {
		this.companyName = companyName;
		this.companyLegalPerson = companyLegalPerson;
		this.companyNature = companyNature;
		this.legalPersonContact = legalPersonContact;
		this.registeredCapital = registeredCapital;
		this.realName = realName;
		this.install = install;
		this.qualifications = qualifications;
		this.address = address;
		this.remarks = remarks;
		this.imageName = imageName;
		this.businessScope = businessScope;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyLegalPerson() {
		return this.companyLegalPerson;
	}

	public void setCompanyLegalPerson(String companyLegalPerson) {
		this.companyLegalPerson = companyLegalPerson;
	}

	public String getCompanyNature() {
		return this.companyNature;
	}

	public void setCompanyNature(String companyNature) {
		this.companyNature = companyNature;
	}

	public String getLegalPersonContact() {
		return this.legalPersonContact;
	}

	public void setLegalPersonContact(String legalPersonContact) {
		this.legalPersonContact = legalPersonContact;
	}

	public Float getRegisteredCapital() {
		return this.registeredCapital;
	}

	public void setRegisteredCapital(Float registeredCapital) {
		this.registeredCapital = registeredCapital;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getInstall() {
		return this.install;
	}

	public void setInstall(String install) {
		this.install = install;
	}

	public String getQualifications() {
		return this.qualifications;
	}

	public void setQualifications(String qualifications) {
		this.qualifications = qualifications;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getImageName() {
		return this.imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getBusinessScope() {
		return this.businessScope;
	}

	public void setBusinessScope(String businessScope) {
		this.businessScope = businessScope;
	}

}