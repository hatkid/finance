package com.finance.entity;

/**
 * MultipleshopLogistics entity. @author MyEclipse Persistence Tools
 */

public class MultipleshopLogistics implements java.io.Serializable {

	// Fields

	private Integer id;
	private String companyName;
	private String address;
	private String linkman;
	private String tel;
	private String email;
	private String headOfficeType;
	private String headOfficeAddress;
	private String logisticsType;
	private Short logisticsEmpSum;
	private Short logisticianEmpNum;
	private Float storageArea;
	private Float storageTemperature;
	private String carType;
	private Short carNum;
	private String businessAdvantage;
	private String businessDisadvantage;
	private Float totalValueOfOutput;
	private Float profitsTax;
	private Float valueOfOutput;
	private Float profitsTaxFive;
	private Short orderQuantity;
	private String year;
	private String lng;
	private String lat;

	// Constructors

	/** default constructor */
	public MultipleshopLogistics() {
	}

	/** full constructor */
	public MultipleshopLogistics(String companyName, String address,
			String linkman, String tel, String email, String headOfficeType,
			String headOfficeAddress, String logisticsType,
			Short logisticsEmpSum, Short logisticianEmpNum, Float storageArea,
			Float storageTemperature, String carType, Short carNum,
			String businessAdvantage, String businessDisadvantage,
			Float totalValueOfOutput, Float profitsTax, Float valueOfOutput,
			Float profitsTaxFive, Short orderQuantity, String year) {
		this.companyName = companyName;
		this.address = address;
		this.linkman = linkman;
		this.tel = tel;
		this.email = email;
		this.headOfficeType = headOfficeType;
		this.headOfficeAddress = headOfficeAddress;
		this.logisticsType = logisticsType;
		this.logisticsEmpSum = logisticsEmpSum;
		this.logisticianEmpNum = logisticianEmpNum;
		this.storageArea = storageArea;
		this.storageTemperature = storageTemperature;
		this.carType = carType;
		this.carNum = carNum;
		this.businessAdvantage = businessAdvantage;
		this.businessDisadvantage = businessDisadvantage;
		this.totalValueOfOutput = totalValueOfOutput;
		this.profitsTax = profitsTax;
		this.valueOfOutput = valueOfOutput;
		this.profitsTaxFive = profitsTaxFive;
		this.orderQuantity = orderQuantity;
		this.year = year;
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

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLinkman() {
		return this.linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHeadOfficeType() {
		return this.headOfficeType;
	}

	public void setHeadOfficeType(String headOfficeType) {
		this.headOfficeType = headOfficeType;
	}

	public String getHeadOfficeAddress() {
		return this.headOfficeAddress;
	}

	public void setHeadOfficeAddress(String headOfficeAddress) {
		this.headOfficeAddress = headOfficeAddress;
	}

	public String getLogisticsType() {
		return this.logisticsType;
	}

	public void setLogisticsType(String logisticsType) {
		this.logisticsType = logisticsType;
	}

	public Short getLogisticsEmpSum() {
		return this.logisticsEmpSum;
	}

	public void setLogisticsEmpSum(Short logisticsEmpSum) {
		this.logisticsEmpSum = logisticsEmpSum;
	}

	public Short getLogisticianEmpNum() {
		return this.logisticianEmpNum;
	}

	public void setLogisticianEmpNum(Short logisticianEmpNum) {
		this.logisticianEmpNum = logisticianEmpNum;
	}

	public Float getStorageArea() {
		return this.storageArea;
	}

	public void setStorageArea(Float storageArea) {
		this.storageArea = storageArea;
	}

	public Float getStorageTemperature() {
		return this.storageTemperature;
	}

	public void setStorageTemperature(Float storageTemperature) {
		this.storageTemperature = storageTemperature;
	}

	public String getCarType() {
		return this.carType;
	}

	public void setCarType(String carType) {
		this.carType = carType;
	}

	public Short getCarNum() {
		return this.carNum;
	}

	public void setCarNum(Short carNum) {
		this.carNum = carNum;
	}

	public String getBusinessAdvantage() {
		return this.businessAdvantage;
	}

	public void setBusinessAdvantage(String businessAdvantage) {
		this.businessAdvantage = businessAdvantage;
	}

	public String getBusinessDisadvantage() {
		return this.businessDisadvantage;
	}

	public void setBusinessDisadvantage(String businessDisadvantage) {
		this.businessDisadvantage = businessDisadvantage;
	}

	public Float getTotalValueOfOutput() {
		return this.totalValueOfOutput;
	}

	public void setTotalValueOfOutput(Float totalValueOfOutput) {
		this.totalValueOfOutput = totalValueOfOutput;
	}

	public Float getProfitsTax() {
		return this.profitsTax;
	}

	public void setProfitsTax(Float profitsTax) {
		this.profitsTax = profitsTax;
	}

	public Float getValueOfOutput() {
		return this.valueOfOutput;
	}

	public void setValueOfOutput(Float valueOfOutput) {
		this.valueOfOutput = valueOfOutput;
	}

	public Float getProfitsTaxFive() {
		return this.profitsTaxFive;
	}

	public void setProfitsTaxFive(Float profitsTaxFive) {
		this.profitsTaxFive = profitsTaxFive;
	}

	public Short getOrderQuantity() {
		return this.orderQuantity;
	}

	public void setOrderQuantity(Short orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

	public String getYear() {
		return this.year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

}