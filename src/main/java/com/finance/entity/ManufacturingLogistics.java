package com.finance.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * ManufacturingLogistics entity. @author MyEclipse Persistence Tools
 */

public class ManufacturingLogistics extends BaseDomain {

	// Fields

	private Integer id;
	private String companyName;
	private String address;
	private String tel;
	private String email;
	private String registrationNumber;
	private Short logisticsEmpSum;
	private Short logisticianEmpNum;
	private Float selfRunLogisticsTotalCost;
	private String storageType;
	private Float storageArea;
	private Short deviceNum;
	private Boolean isLogisticsOutsourcing;
	private String outsourcingType;
	private String outsourcingCompanyName;
	private Float outsourcingCost;
	private String companyType;
	private String collaborationTime;
	private Boolean isRentStorage;
	private Float rentStorageArea;
	private String logisticsType;
	private Float rentStorageCost;
	private String year;
	private String lng;
	private String lat;

	// Constructors

	/** default constructor */
	public ManufacturingLogistics() {
	}

	/** full constructor */
	public ManufacturingLogistics(String companyName, String address,
			String tel, String email, String registrationNumber,
			Short logisticsEmpSum, Short logisticianEmpNum,
			Float selfRunLogisticsTotalCost, String storageType,
			Float storageArea, Short deviceNum, Boolean isLogisticsOutsourcing,
			String outsourcingType, String outsourcingCompanyName,
			Float outsourcingCost, String companyType, String collaborationTime,
			Boolean isRentStorage, Float rentStorageArea, String logisticsType,
			Float rentStorageCost) {
		this.companyName = companyName;
		this.address = address;
		this.tel = tel;
		this.email = email;
		this.registrationNumber = registrationNumber;
		this.logisticsEmpSum = logisticsEmpSum;
		this.logisticianEmpNum = logisticianEmpNum;
		this.selfRunLogisticsTotalCost = selfRunLogisticsTotalCost;
		this.storageType = storageType;
		this.storageArea = storageArea;
		this.deviceNum = deviceNum;
		this.isLogisticsOutsourcing = isLogisticsOutsourcing;
		this.outsourcingType = outsourcingType;
		this.outsourcingCompanyName = outsourcingCompanyName;
		this.outsourcingCost = outsourcingCost;
		this.companyType = companyType;
		this.collaborationTime = collaborationTime;
		this.isRentStorage = isRentStorage;
		this.rentStorageArea = rentStorageArea;
		this.logisticsType = logisticsType;
		this.rentStorageCost = rentStorageCost;
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

	public String getRegistrationNumber() {
		return this.registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
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

	public Float getSelfRunLogisticsTotalCost() {
		return this.selfRunLogisticsTotalCost;
	}

	public void setSelfRunLogisticsTotalCost(Float selfRunLogisticsTotalCost) {
		this.selfRunLogisticsTotalCost = selfRunLogisticsTotalCost;
	}

	public String getStorageType() {
		return this.storageType;
	}

	public void setStorageType(String storageType) {
		this.storageType = storageType;
	}

	public Float getStorageArea() {
		return this.storageArea;
	}

	public void setStorageArea(Float storageArea) {
		this.storageArea = storageArea;
	}

	public Short getDeviceNum() {
		return this.deviceNum;
	}

	public void setDeviceNum(Short deviceNum) {
		this.deviceNum = deviceNum;
	}

	public Boolean getIsLogisticsOutsourcing() {
		return this.isLogisticsOutsourcing;
	}

	public void setIsLogisticsOutsourcing(Boolean isLogisticsOutsourcing) {
		this.isLogisticsOutsourcing = isLogisticsOutsourcing;
	}

	public String getOutsourcingType() {
		return this.outsourcingType;
	}

	public void setOutsourcingType(String outsourcingType) {
		this.outsourcingType = outsourcingType;
	}

	public String getOutsourcingCompanyName() {
		return this.outsourcingCompanyName;
	}

	public void setOutsourcingCompanyName(String outsourcingCompanyName) {
		this.outsourcingCompanyName = outsourcingCompanyName;
	}

	public Float getOutsourcingCost() {
		return this.outsourcingCost;
	}

	public void setOutsourcingCost(Float outsourcingCost) {
		this.outsourcingCost = outsourcingCost;
	}

	public String getCompanyType() {
		return this.companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getCollaborationTime() {
		return this.collaborationTime;
	}

	public void setCollaborationTime(String collaborationTime) {
		this.collaborationTime = collaborationTime;
	}

	public Boolean getIsRentStorage() {
		return this.isRentStorage;
	}

	public void setIsRentStorage(Boolean isRentStorage) {
		this.isRentStorage = isRentStorage;
	}

	public Float getRentStorageArea() {
		return this.rentStorageArea;
	}

	public void setRentStorageArea(Float rentStorageArea) {
		this.rentStorageArea = rentStorageArea;
	}

	public String getLogisticsType() {
		return this.logisticsType;
	}

	public void setLogisticsType(String logisticsType) {
		this.logisticsType = logisticsType;
	}

	public Float getRentStorageCost() {
		return this.rentStorageCost;
	}

	public void setRentStorageCost(Float rentStorageCost) {
		this.rentStorageCost = rentStorageCost;
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