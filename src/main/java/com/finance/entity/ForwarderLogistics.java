package com.finance.entity;

/**
 * ForwarderLogistics entity. @author MyEclipse Persistence Tools
 */

public class ForwarderLogistics implements java.io.Serializable {

	// Fields

	private Integer id;
	private String companyName;
	private String registrationNumber;
	private String address;
	private String tel;
	private String email;
	private Short logisticsEmpSum;
	private Short logisticianEmpNum;
	private Boolean isGradeA;
	private Boolean haveInformationPlatform;
	private String logisticiaType;
	private Short inkedVehiclesNumber;
	private Float averageCapacity;
	private Float capacity;
	private String transportLinks;
	private String serviceObject;
	private Float totalValueOfOutput;
	private Float totalVariableCost;
	private Float totaFixedCost;
	private String year;
	private String lng;
	private String lat;

	// Constructors

	/** default constructor */
	public ForwarderLogistics() {
	}

	/** full constructor */
	public ForwarderLogistics(String companyName, String registrationNumber,
			String address, String tel, String email, Short logisticsEmpSum,
			Short logisticianEmpNum, Boolean isGradeA,
			Boolean haveInformationPlatform, String logisticiaType,
			Short inkedVehiclesNumber, Float averageCapacity, Float capacity,
			String transportLinks, String serviceObject,
			Float totalValueOfOutput, Float totalVariableCost,
			Float totaFixedCost, String year) {
		this.companyName = companyName;
		this.registrationNumber = registrationNumber;
		this.address = address;
		this.tel = tel;
		this.email = email;
		this.logisticsEmpSum = logisticsEmpSum;
		this.logisticianEmpNum = logisticianEmpNum;
		this.isGradeA = isGradeA;
		this.haveInformationPlatform = haveInformationPlatform;
		this.logisticiaType = logisticiaType;
		this.inkedVehiclesNumber = inkedVehiclesNumber;
		this.averageCapacity = averageCapacity;
		this.capacity = capacity;
		this.transportLinks = transportLinks;
		this.serviceObject = serviceObject;
		this.totalValueOfOutput = totalValueOfOutput;
		this.totalVariableCost = totalVariableCost;
		this.totaFixedCost = totaFixedCost;
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

	public String getRegistrationNumber() {
		return this.registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public Boolean getIsGradeA() {
		return this.isGradeA;
	}

	public void setIsGradeA(Boolean isGradeA) {
		this.isGradeA = isGradeA;
	}

	public Boolean getHaveInformationPlatform() {
		return this.haveInformationPlatform;
	}

	public void setHaveInformationPlatform(Boolean haveInformationPlatform) {
		this.haveInformationPlatform = haveInformationPlatform;
	}

	public String getLogisticiaType() {
		return this.logisticiaType;
	}

	public void setLogisticiaType(String logisticiaType) {
		this.logisticiaType = logisticiaType;
	}

	public Short getInkedVehiclesNumber() {
		return this.inkedVehiclesNumber;
	}

	public void setInkedVehiclesNumber(Short inkedVehiclesNumber) {
		this.inkedVehiclesNumber = inkedVehiclesNumber;
	}

	public Float getAverageCapacity() {
		return this.averageCapacity;
	}

	public void setAverageCapacity(Float averageCapacity) {
		this.averageCapacity = averageCapacity;
	}

	public Float getCapacity() {
		return this.capacity;
	}

	public void setCapacity(Float capacity) {
		this.capacity = capacity;
	}

	public String getTransportLinks() {
		return this.transportLinks;
	}

	public void setTransportLinks(String transportLinks) {
		this.transportLinks = transportLinks;
	}

	public String getServiceObject() {
		return this.serviceObject;
	}

	public void setServiceObject(String serviceObject) {
		this.serviceObject = serviceObject;
	}

	public Float getTotalValueOfOutput() {
		return this.totalValueOfOutput;
	}

	public void setTotalValueOfOutput(Float totalValueOfOutput) {
		this.totalValueOfOutput = totalValueOfOutput;
	}

	public Float getTotalVariableCost() {
		return this.totalVariableCost;
	}

	public void setTotalVariableCost(Float totalVariableCost) {
		this.totalVariableCost = totalVariableCost;
	}

	public Float getTotaFixedCost() {
		return this.totaFixedCost;
	}

	public void setTotaFixedCost(Float totaFixedCost) {
		this.totaFixedCost = totaFixedCost;
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