package com.finance.entity;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Car entity. @author MyEclipse Persistence Tools
 */

public class Car implements java.io.Serializable {

	// Fields

	private Integer id;
	private String plateNumber;
	private String vin;
	private String engineNumber;
	private Double displacement;
	private String ownerName;
	private String onwerTel;
	private String gps;
	private Double tonnage;
	private Double carLong;
	private String carNumber;
	private Date carNumberDate;
	private String insuranceCompany;
	private Date insuranceDate;
	private String creater;
	private Timestamp createDate;
	private String vestInCompany;

	// Constructors

	/** default constructor */
	public Car() {
	}

	/** full constructor */
	public Car(String plateNumber, String vin, String engineNumber,
			Double displacement, String ownerName, String onwerTel, String gps,
			Double tonnage, Double carLong, String carNumber, Date carNumberDate,
			String insuranceCompany, Date insuranceDate, String creater,
			Timestamp createDate, String vestInCompany) {
		this.plateNumber = plateNumber;
		this.vin = vin;
		this.engineNumber = engineNumber;
		this.displacement = displacement;
		this.ownerName = ownerName;
		this.onwerTel = onwerTel;
		this.gps = gps;
		this.tonnage = tonnage;
		this.carLong = carLong;
		this.carNumber = carNumber;
		this.carNumberDate = carNumberDate;
		this.insuranceCompany = insuranceCompany;
		this.insuranceDate = insuranceDate;
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

	public String getPlateNumber() {
		return this.plateNumber;
	}

	public void setPlateNumber(String plateNumber) {
		this.plateNumber = plateNumber;
	}

	public String getVin() {
		return this.vin;
	}

	public void setVin(String vin) {
		this.vin = vin;
	}

	public String getEngineNumber() {
		return this.engineNumber;
	}

	public void setEngineNumber(String engineNumber) {
		this.engineNumber = engineNumber;
	}

	public Double getDisplacement() {
		return this.displacement;
	}

	public void setDisplacement(Double displacement) {
		this.displacement = displacement;
	}

	public String getOwnerName() {
		return this.ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getOnwerTel() {
		return this.onwerTel;
	}

	public void setOnwerTel(String onwerTel) {
		this.onwerTel = onwerTel;
	}

	public String getGps() {
		return this.gps;
	}

	public void setGps(String gps) {
		this.gps = gps;
	}

	public Double getTonnage() {
		return this.tonnage;
	}

	public void setTonnage(Double tonnage) {
		this.tonnage = tonnage;
	}

	public Double getCarLong() {
		return this.carLong;
	}

	public void setCarLong(Double carLong) {
		this.carLong = carLong;
	}

	public String getCarNumber() {
		return this.carNumber;
	}

	public void setCarNumber(String carNumber) {
		this.carNumber = carNumber;
	}

	public Date getCarNumberDate() {
		return this.carNumberDate;
	}

	public void setCarNumberDate(Date carNumberDate) {
		this.carNumberDate = carNumberDate;
	}

	public String getInsuranceCompany() {
		return this.insuranceCompany;
	}

	public void setInsuranceCompany(String insuranceCompany) {
		this.insuranceCompany = insuranceCompany;
	}

	public Date getInsuranceDate() {
		return this.insuranceDate;
	}

	public void setInsuranceDate(Date insuranceDate) {
		this.insuranceDate = insuranceDate;
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