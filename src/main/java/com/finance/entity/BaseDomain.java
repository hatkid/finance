package com.finance.entity;

import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;

/**
 * 实体类基类，重写toString()方法
 * <p>
 * author lvzhi
 * create 2016/2/26 14:43
 */
public class BaseDomain {

    protected Date created;
    protected Date lastmod;
    protected Integer creater;
    protected Integer modifyer;

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getLastmod() {
        return lastmod;
    }

    public void setLastmod(Date lastmod) {
        this.lastmod = lastmod;
    }

    public Integer getCreater() {
        return creater;
    }

    public void setCreater(Integer creater) {
        this.creater = creater;
    }

    public Integer getModifyer() {
        return modifyer;
    }

    public void setModifyer(Integer modifyer) {
        this.modifyer = modifyer;
    }

    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }

    /**
     * 数据库记录字段赋值，新添加记录时调用
     * param domain
     * param userId
     * return
     */
    public static BaseDomain createLog(BaseDomain domain, int userId) {
        return createLog(domain, userId, true);
    }

    /**
     * 数据库记录字段赋值，修改记录时调用
     * param domain
     * param userId
     * return
     */
    public static BaseDomain editLog(BaseDomain domain, int userId) {
        return createLog(domain, userId, false);
    }

    /**
     * 数据库记录字段赋值，统一处理方法
     * param domain
     * param userId
     * param flag 当为true时，为新数据，false为修改数据
     * return
     */
    public static BaseDomain createLog(BaseDomain domain, int userId, boolean flag) {
        if (flag) {
            domain.setCreated(new Date());
            domain.setLastmod(new Date());
            domain.setCreater(userId);
            domain.setModifyer(userId);
        } else {
            domain.setLastmod(new Date());
            domain.setModifyer(userId);
        }
        return domain;
    }
}
