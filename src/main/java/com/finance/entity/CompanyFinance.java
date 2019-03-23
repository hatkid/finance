package com.finance.entity;


public class CompanyFinance extends CommonEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	// 公司名字
	private String companyName;
	
	// 货款金额
	private Double loanAmount;
	
	// 年初欠款
	private Double arrears;
	
	// 已付款
	private Double paid;
	
	// 总欠款额
	private Double totalArrears;
	
	// 时间
	private String timedate;
	
	// 渠道：0-pc；1-小程序
	private Integer channel;

	public CompanyFinance() {
		
	}
	
	public CompanyFinance(Integer id, String companyName, Double loanAmount, Double arrears, Double paid,
			Double totalArrears, String timedate, Integer channel) {
		super();
		this.id = id;
		this.companyName = companyName;
		this.loanAmount = loanAmount;
		this.arrears = arrears;
		this.paid = paid;
		this.totalArrears = totalArrears;
		this.timedate = timedate;
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

	public Double getLoanAmount() {
		return loanAmount;
	}

	public void setLoanAmount(Double loanAmount) {
		this.loanAmount = loanAmount;
	}

	public Double getArrears() {
		return arrears;
	}

	public void setArrears(Double arrears) {
		this.arrears = arrears;
	}

	public Double getPaid() {
		return paid;
	}

	public void setPaid(Double paid) {
		this.paid = paid;
	}

	public Double getTotalArrears() {
		return totalArrears;
	}

	public void setTotalArrears(Double totalArrears) {
		this.totalArrears = totalArrears;
	}

	public String getTimedate() {
		return timedate;
	}

	public void setTimedate(String timedate) {
		this.timedate = timedate;
	}

	public Integer getChannel() {
		return channel;
	}

	public void setChannel(Integer channel) {
		this.channel = channel;
	}
	
}