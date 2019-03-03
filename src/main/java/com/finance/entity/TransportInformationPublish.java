package com.finance.entity;

import java.util.Date;

public class TransportInformationPublish {

	
	private int id;
	private String startProvince;
	private String startCity;
	private String startCounty;
	private String startAddress;
	private String endProvince;
	private String endCity;
	private String endCounty;
	private String endAddress;
	private String details;
	private int vehicleLoad;
	private String contact;
	private String tel;
	private int effectiveTime;
	private String creater;
	private String realCreater;
	private String remarks;
	private int review;
	private String reviewer;
	private Date createTime;
	private int type;
	private Date reviewTime;
	
	
	public TransportInformationPublish() {
	}


	public TransportInformationPublish(int id, String startProvince, String startCity, String startCounty,
			String startAddress, String endProvince, String endCity, String endCounty, String endAddress,
			String details, int vehicleLoad, String contact, String tel, int effectiveTime, String creater,
			String realCreater, String remarks, int review, String reviewer, Date createTime, int type, Date reviewTime) {
		super();
		this.id = id;
		this.startProvince = startProvince;
		this.startCity = startCity;
		this.startCounty = startCounty;
		this.startAddress = startAddress;
		this.endProvince = endProvince;
		this.endCity = endCity;
		this.endCounty = endCounty;
		this.endAddress = endAddress;
		this.details = details;
		this.vehicleLoad = vehicleLoad;
		this.contact = contact;
		this.tel = tel;
		this.effectiveTime = effectiveTime;
		this.creater = creater;
		this.realCreater = realCreater;
		this.remarks = remarks;
		this.review = review;
		this.reviewer = reviewer;
		this.createTime = createTime;
		this.type = type;
		this.reviewTime = reviewTime;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getStartProvince() {
		return startProvince;
	}


	public void setStartProvince(String startProvince) {
		this.startProvince = startProvince;
	}


	public String getStartCity() {
		return startCity;
	}


	public void setStartCity(String startCity) {
		this.startCity = startCity;
	}


	public String getStartCounty() {
		return startCounty;
	}


	public void setStartCounty(String startCounty) {
		this.startCounty = startCounty;
	}


	public String getStartAddress() {
		return startAddress;
	}


	public void setStartAddress(String startAddress) {
		this.startAddress = startAddress;
	}


	public String getEndProvince() {
		return endProvince;
	}


	public void setEndProvince(String endProvince) {
		this.endProvince = endProvince;
	}


	public String getEndCity() {
		return endCity;
	}


	public void setEndCity(String endCity) {
		this.endCity = endCity;
	}


	public String getEndCounty() {
		return endCounty;
	}


	public void setEndCounty(String endCounty) {
		this.endCounty = endCounty;
	}


	public String getEndAddress() {
		return endAddress;
	}


	public void setEndAddress(String endAddress) {
		this.endAddress = endAddress;
	}
	

	public String getDetails() {
		return details;
	}


	public void setDetails(String details) {
		this.details = details;
	}


	public int getVehicleLoad() {
		return vehicleLoad;
	}


	public void setVehicleLoad(int vehicleLoad) {
		this.vehicleLoad = vehicleLoad;
	}


	public String getContact() {
		return contact;
	}


	public void setContact(String contact) {
		this.contact = contact;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public int getEffectiveTime() {
		return effectiveTime;
	}


	public void setEffectiveTime(int effectiveTime) {
		this.effectiveTime = effectiveTime;
	}


	public String getCreater() {
		return creater;
	}


	public void setCreater(String creater) {
		this.creater = creater;
	}


	public String getRealCreater() {
		return realCreater;
	}


	public void setRealCreater(String realCreater) {
		this.realCreater = realCreater;
	}


	public String getRemarks() {
		return remarks;
	}


	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}


	public int getReview() {
		return review;
	}


	public void setReview(int review) {
		this.review = review;
	}


	public String getReviewer() {
		return reviewer;
	}


	public void setReviewer(String reviewer) {
		this.reviewer = reviewer;
	}


	public Date getCreateTime() {
		return createTime;
	}


	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}


	public int getType() {
		return type;
	}


	public void setType(int type) {
		this.type = type;
	}


	public Date getReviewTime() {
		return reviewTime;
	}


	public void setReviewTime(Date reviewTime) {
		this.reviewTime = reviewTime;
	}


	
	
	
	
}
