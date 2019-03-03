/**
 * Title: TreeModel.java
 * Package com.lvzhi.model
 * author lvzhi
 * date 2015年9月23日 上午11:16:46
 * version V1.0
 * Copyright (c) 2015,lvzhi@163.com All Rights Reserved.
 */

package com.finance.model;


import com.finance.entity.BaseDomain;

/**
 * ClassName: TreeModel
 * Description:  树展示模型
 * author lvzhi
 * date 2015年9月23日 上午11:16:46
 */

public class TreeModel extends BaseDomain {
    private String id;
    private String pid;
    private String name;
    private String iconCls;
    private String state;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
