package com.finance.entity;

/**
 * ServiceLogistics entity. @author MyEclipse Persistence Tools
 */

public class ServiceLogistics extends BaseDomain {

	// Fields

	private Integer id;
	private String companyName;
	private String registrationNumber;
	private String address;
	private Boolean isGradeA;
	private String legalPerson;
	private String tel;
	private String email;
	private String companyType;
	private Short employeesNumber;
	private Short collegeOrAboveEmpNum;
	private Short logisticianEmpNum;
	private Float carNumber;
	private String storageType;
	private Float warehouseSpace;
	private Boolean haveInformationPlatform;
	private Boolean haveLandDeed;
	private Float areaOfLand;
	private String businessAdvantage;
	private String businessDisadvantage;
	private String mainSourceOfIncome;
	private Float totalValueOfOutput;
	private Float profitsTax;
	private Float valueOfOutput;
	private String year;
	
	private String lng;
	private String lat;

	// Constructors

	/** default constructor */
	public ServiceLogistics() {
	}

	public ServiceLogistics(Integer id, String companyName, String registrationNumber, String address, Boolean isGradeA,
			String legalPerson, String tel, String email, String companyType, Short employeesNumber,
			Short collegeOrAboveEmpNum, Short logisticianEmpNum, Float carNumber, String storageType,
			Float warehouseSpace, Boolean haveInformationPlatform, Boolean haveLandDeed, Float areaOfLand,
			String businessAdvantage, String businessDisadvantage, String mainSourceOfIncome, Float totalValueOfOutput,
			Float profitsTax, Float valueOfOutput, String year, String lng, String lat) {
		super();
		this.id = id;
		this.companyName = companyName;
		this.registrationNumber = registrationNumber;
		this.address = address;
		this.isGradeA = isGradeA;
		this.legalPerson = legalPerson;
		this.tel = tel;
		this.email = email;
		this.companyType = companyType;
		this.employeesNumber = employeesNumber;
		this.collegeOrAboveEmpNum = collegeOrAboveEmpNum;
		this.logisticianEmpNum = logisticianEmpNum;
		this.carNumber = carNumber;
		this.storageType = storageType;
		this.warehouseSpace = warehouseSpace;
		this.haveInformationPlatform = haveInformationPlatform;
		this.haveLandDeed = haveLandDeed;
		this.areaOfLand = areaOfLand;
		this.businessAdvantage = businessAdvantage;
		this.businessDisadvantage = businessDisadvantage;
		this.mainSourceOfIncome = mainSourceOfIncome;
		this.totalValueOfOutput = totalValueOfOutput;
		this.profitsTax = profitsTax;
		this.valueOfOutput = valueOfOutput;
		this.year = year;
		this.lng = lng;
		this.lat = lat;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getRegistrationNumber() {
		return registrationNumber;
	}

	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Boolean getIsGradeA() {
		return isGradeA;
	}

	public void setIsGradeA(Boolean isGradeA) {
		this.isGradeA = isGradeA;
	}

	public String getLegalPerson() {
		return legalPerson;
	}

	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public Short getEmployeesNumber() {
		return employeesNumber;
	}

	public void setEmployeesNumber(Short employeesNumber) {
		this.employeesNumber = employeesNumber;
	}

	public Short getCollegeOrAboveEmpNum() {
		return collegeOrAboveEmpNum;
	}

	public void setCollegeOrAboveEmpNum(Short collegeOrAboveEmpNum) {
		this.collegeOrAboveEmpNum = collegeOrAboveEmpNum;
	}

	public Short getLogisticianEmpNum() {
		return logisticianEmpNum;
	}

	public void setLogisticianEmpNum(Short logisticianEmpNum) {
		this.logisticianEmpNum = logisticianEmpNum;
	}

	public Float getCarNumber() {
		return carNumber;
	}

	public void setCarNumber(Float carNumber) {
		this.carNumber = carNumber;
	}

	public String getStorageType() {
		return storageType;
	}

	public void setStorageType(String storageType) {
		this.storageType = storageType;
	}

	public Float getWarehouseSpace() {
		return warehouseSpace;
	}

	public void setWarehouseSpace(Float warehouseSpace) {
		this.warehouseSpace = warehouseSpace;
	}

	public Boolean getHaveInformationPlatform() {
		return haveInformationPlatform;
	}

	public void setHaveInformationPlatform(Boolean haveInformationPlatform) {
		this.haveInformationPlatform = haveInformationPlatform;
	}

	public Boolean getHaveLandDeed() {
		return haveLandDeed;
	}

	public void setHaveLandDeed(Boolean haveLandDeed) {
		this.haveLandDeed = haveLandDeed;
	}

	public Float getAreaOfLand() {
		return areaOfLand;
	}

	public void setAreaOfLand(Float areaOfLand) {
		this.areaOfLand = areaOfLand;
	}

	public String getBusinessAdvantage() {
		return businessAdvantage;
	}

	public void setBusinessAdvantage(String businessAdvantage) {
		this.businessAdvantage = businessAdvantage;
	}

	public String getBusinessDisadvantage() {
		return businessDisadvantage;
	}

	public void setBusinessDisadvantage(String businessDisadvantage) {
		this.businessDisadvantage = businessDisadvantage;
	}

	public String getMainSourceOfIncome() {
		return mainSourceOfIncome;
	}

	public void setMainSourceOfIncome(String mainSourceOfIncome) {
		this.mainSourceOfIncome = mainSourceOfIncome;
	}

	public Float getTotalValueOfOutput() {
		return totalValueOfOutput;
	}

	public void setTotalValueOfOutput(Float totalValueOfOutput) {
		this.totalValueOfOutput = totalValueOfOutput;
	}

	public Float getProfitsTax() {
		return profitsTax;
	}

	public void setProfitsTax(Float profitsTax) {
		this.profitsTax = profitsTax;
	}

	public Float getValueOfOutput() {
		return valueOfOutput;
	}

	public void setValueOfOutput(Float valueOfOutput) {
		this.valueOfOutput = valueOfOutput;
	}

	public String getYear() {
		return year;
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