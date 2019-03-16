package com.finance.entity;


public class CompanyFinance extends CommonEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	// 公司名字
	private String companyName;
	
	// 货款金额
	private double loanAmount;
	
	// 年初欠款
	private double arrears;
	
	// 已付款
	private double paid;
	
	// 总欠款额
	private double totalArrears;
	
	// 时间
	private String timedate;
	
	// 渠道：0-pc；1-小程序
	private int channel;
	
	public CompanyFinance() {
		
	}

	public CompanyFinance(Integer id, String companyName, double loanAmount, double arrears, double paid,
			double totalArrears, int channel) {
		super();
		this.id = id;
		this.companyName = companyName;
		this.loanAmount = loanAmount;
		this.arrears = arrears;
		this.paid = paid;
		this.totalArrears = totalArrears;
		this.channel = channel;
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

	public double getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}

	public double getArrears() {
		return arrears;
	}

	public void setArrears(double arrears) {
		this.arrears = arrears;
	}

	public double getPaid() {
		return paid;
	}

	public void setPaid(double paid) {
		this.paid = paid;
	}

	public double getTotalArrears() {
		return totalArrears;
	}

	public void setTotalArrears(double totalArrears) {
		this.totalArrears = totalArrears;
	}

	public int getChannel() {
		return channel;
	}

	public void setChannel(int channel) {
		this.channel = channel;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getTimedate() {
		return timedate;
	}

	public void setTimedate(String timedate) {
		this.timedate = timedate;
	}

	
	
	
	

}