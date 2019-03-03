/**
 * Title: Company.java
 * Package com.lvzhi.entity
 * author dingdongliang
 * date 2015年9月21日 上午11:03:35
 * version V1.0
 * Copyright (c) 2015,lvzhi@163.com All Rights Reserved.
 */

package com.finance.entity;

import com.finance.utils.ExcelVOAttribute;

/**
 * author lvzhi
 * ClassName: Company
 * Description: 公司信息类,ExcelVOAttribute注解表示该字段在输出excel表格中
 * date 2015年9月21日 上午11:03:35
 */

public class Company extends BaseDomain {
    private Integer companyId;
    @ExcelVOAttribute(name = "公司名称", column = "A", isExport = true, prompt = "这是公司名称!")
    private String name;
    @ExcelVOAttribute(name = "公司电话", column = "B")
    private String tel;
    @ExcelVOAttribute(name = "公司传真", column = "C")
    private String fax;
    @ExcelVOAttribute(name = "公司地址", column = "D")
    private String address;
    @ExcelVOAttribute(name = "邮政编码", column = "E")
    private String zip;
    @ExcelVOAttribute(name = "Email", column = "F")
    private String email;
    @ExcelVOAttribute(name = "联系人", column = "G")
    private String contact;
    private String status;
    private String manager;
    private String bank;
    private String bankaccount;
    @ExcelVOAttribute(name = "描述", column = "H")
    private String description;

    public Company() {
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getBankaccount() {
        return bankaccount;
    }

    public void setBankaccount(String bankaccount) {
        this.bankaccount = bankaccount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


}
