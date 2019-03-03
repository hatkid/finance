package com.finance.entity;

/**
 * GardenLogistics entity. @author MyEclipse Persistence Tools
 */

public class GardenLogistics implements java.io.Serializable {

	// Fields

	private Integer id;
	private String companyName;
	private String address;
	private String legalPerson;
	private String tel;
	private String email;
	private String achieveDistinction;
	private String gardenType;
	private Short cmpNumInGarden;
	private Float storageArea;
	private Short vehiclesNumber;
	private Float occupancyRate;
	private Boolean haveInformationPlatform;
	private Boolean haveLandDeed;
	private Float areaOfLand;
	private String businessAdvantage;
	private String businessDisadvantage;
	private Float totalValueOfOutput;
	private Float profitsTax;
	private Float valueOfOutput;
	private Float profitsTaxFive;
	private String year;
	private String lng;
	private String lat;

	// Constructors

	/** default constructor */
	public GardenLogistics() {
	}

	/** full constructor */
	public GardenLogistics(String companyName, String address,
			String legalPerson, String tel, String email,
			String achieveDistinction, String gardenType, Short cmpNumInGarden,
			Float storageArea, Short vehiclesNumber, Float occupancyRate,
			Boolean haveInformationPlatform, Boolean haveLandDeed,
			Float areaOfLand, String businessAdvantage,
			String businessDisadvantage, Float totalValueOfOutput,
			Float profitsTax, Float valueOfOutput, Float profitsTaxFive,
			String year) {
		this.companyName = companyName;
		this.address = address;
		this.legalPerson = legalPerson;
		this.tel = tel;
		this.email = email;
		this.achieveDistinction = achieveDistinction;
		this.gardenType = gardenType;
		this.cmpNumInGarden = cmpNumInGarden;
		this.storageArea = storageArea;
		this.vehiclesNumber = vehiclesNumber;
		this.occupancyRate = occupancyRate;
		this.haveInformationPlatform = haveInformationPlatform;
		this.haveLandDeed = haveLandDeed;
		this.areaOfLand = areaOfLand;
		this.businessAdvantage = businessAdvantage;
		this.businessDisadvantage = businessDisadvantage;
		this.totalValueOfOutput = totalValueOfOutput;
		this.profitsTax = profitsTax;
		this.valueOfOutput = valueOfOutput;
		this.profitsTaxFive = profitsTaxFive;
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

	public String getLegalPerson() {
		return this.legalPerson;
	}

	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
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

	public String getAchieveDistinction() {
		return this.achieveDistinction;
	}

	public void setAchieveDistinction(String achieveDistinction) {
		this.achieveDistinction = achieveDistinction;
	}

	public String getGardenType() {
		return this.gardenType;
	}

	public void setGardenType(String gardenType) {
		this.gardenType = gardenType;
	}

	public Short getCmpNumInGarden() {
		return this.cmpNumInGarden;
	}

	public void setCmpNumInGarden(Short cmpNumInGarden) {
		this.cmpNumInGarden = cmpNumInGarden;
	}

	public Float getStorageArea() {
		return this.storageArea;
	}

	public void setStorageArea(Float storageArea) {
		this.storageArea = storageArea;
	}

	public Short getVehiclesNumber() {
		return this.vehiclesNumber;
	}

	public void setVehiclesNumber(Short vehiclesNumber) {
		this.vehiclesNumber = vehiclesNumber;
	}

	public Float getOccupancyRate() {
		return this.occupancyRate;
	}

	public void setOccupancyRate(Float occupancyRate) {
		this.occupancyRate = occupancyRate;
	}

	public Boolean getHaveInformationPlatform() {
		return this.haveInformationPlatform;
	}

	public void setHaveInformationPlatform(Boolean haveInformationPlatform) {
		this.haveInformationPlatform = haveInformationPlatform;
	}

	public Boolean getHaveLandDeed() {
		return this.haveLandDeed;
	}

	public void setHaveLandDeed(Boolean haveLandDeed) {
		this.haveLandDeed = haveLandDeed;
	}

	public Float getAreaOfLand() {
		return this.areaOfLand;
	}

	public void setAreaOfLand(Float areaOfLand) {
		this.areaOfLand = areaOfLand;
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