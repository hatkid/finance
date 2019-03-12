package com.finance.entity;

public class SupplierDetail extends CommonEntity implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	// 采购名称
	private String purchaseName;
	
	// 单位
	private String unit;
	
	// 数量
	private int amount;
	
	// 单价
	private double price;
	
	// 金额
	private double total;
	
	// 已付款
	private double paid;
	
	// 付款方式
	private String payment;

	// 公司名字
	private String companyName;
	
	// 创建时间start
	private String createTimeStart;
	
	// 创建时间end
	private String createTimeEnd;
	
	// 创建时间
	private String createTime;
	
	// 公司id
	private int companyId;
	
	
	
	public SupplierDetail() {
		
	}

	public SupplierDetail(Integer id, String purchaseName, String unit, int amount, double price, double total,
			double paid, String payment) {
		super();
		this.id = id;
		this.purchaseName = purchaseName;
		this.unit = unit;
		this.amount = amount;
		this.price = price;
		this.total = total;
		this.paid = paid;
		this.payment = payment;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPurchaseName() {
		return purchaseName;
	}

	public void setPurchaseName(String purchaseName) {
		this.purchaseName = purchaseName;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getPaid() {
		return paid;
	}

	public void setPaid(double paid) {
		this.paid = paid;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCreateTimeStart() {
		return createTimeStart;
	}

	public void setCreateTimeStart(String createTimeStart) {
		this.createTimeStart = createTimeStart;
	}

	public String getCreateTimeEnd() {
		return createTimeEnd;
	}

	public void setCreateTimeEnd(String createTimeEnd) {
		this.createTimeEnd = createTimeEnd;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	
	

	
	
}