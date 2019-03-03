package com.finance.entity;

/**
 * StorageLogistics entity. @author MyEclipse Persistence Tools
 */

public class StorageLogistics implements java.io.Serializable {

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
	private String isRentStorage;
	private Float storageArea;
	private Float storageCapacity;
	private String storageType;
	private String stockType;
	private Float totalThroughput;
	private Float storageAreaAverageUtilization;
	private Float storageAreaUtilization;
	private String serviceObject;
	private Float totalValueOfOutput;
	private Float totalVariableCost;
	private Float totaFixedCost;
	private String year;
	private String lng;
	private String lat;

	// Constructors

	/** default constructor */
	public StorageLogistics() {
	}

	/** full constructor */
	public StorageLogistics(String companyName, String registrationNumber,
			String address, String tel, String email, Short logisticsEmpSum,
			Short logisticianEmpNum, Boolean isGradeA, String isRentStorage,
			Float storageArea, Float storageCapacity, String storageType,
			String stockType, Float totalThroughput,
			Float storageAreaAverageUtilization, Float storageAreaUtilization,
			String serviceObject, Float totalValueOfOutput,
			Float totalVariableCost, Float totaFixedCost) {
		this.companyName = companyName;
		this.registrationNumber = registrationNumber;
		this.address = address;
		this.tel = tel;
		this.email = email;
		this.logisticsEmpSum = logisticsEmpSum;
		this.logisticianEmpNum = logisticianEmpNum;
		this.isGradeA = isGradeA;
		this.isRentStorage = isRentStorage;
		this.storageArea = storageArea;
		this.storageCapacity = storageCapacity;
		this.storageType = storageType;
		this.stockType = stockType;
		this.totalThroughput = totalThroughput;
		this.storageAreaAverageUtilization = storageAreaAverageUtilization;
		this.storageAreaUtilization = storageAreaUtilization;
		this.serviceObject = serviceObject;
		this.totalValueOfOutput = totalValueOfOutput;
		this.totalVariableCost = totalVariableCost;
		this.totaFixedCost = totaFixedCost;
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

	public String getIsRentStorage() {
		return this.isRentStorage;
	}

	public void setIsRentStorage(String isRentStorage) {
		this.isRentStorage = isRentStorage;
	}

	public Float getStorageArea() {
		return this.storageArea;
	}

	public void setStorageArea(Float storageArea) {
		this.storageArea = storageArea;
	}

	public Float getStorageCapacity() {
		return this.storageCapacity;
	}

	public void setStorageCapacity(Float storageCapacity) {
		this.storageCapacity = storageCapacity;
	}

	public String getStorageType() {
		return this.storageType;
	}

	public void setStorageType(String storageType) {
		this.storageType = storageType;
	}

	public String getStockType() {
		return this.stockType;
	}

	public void setStockType(String stockType) {
		this.stockType = stockType;
	}

	public Float getTotalThroughput() {
		return this.totalThroughput;
	}

	public void setTotalThroughput(Float totalThroughput) {
		this.totalThroughput = totalThroughput;
	}

	public Float getStorageAreaAverageUtilization() {
		return this.storageAreaAverageUtilization;
	}

	public void setStorageAreaAverageUtilization(
			Float storageAreaAverageUtilization) {
		this.storageAreaAverageUtilization = storageAreaAverageUtilization;
	}

	public Float getStorageAreaUtilization() {
		return this.storageAreaUtilization;
	}

	public void setStorageAreaUtilization(Float storageAreaUtilization) {
		this.storageAreaUtilization = storageAreaUtilization;
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