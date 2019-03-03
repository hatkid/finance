/**
 * Title: TreeGridModel.java
 * Package com.lvzhi.model
 * author lvzhi
 * date 2015年9月21日 下午3:45:50
 * version V1.0
 */

package com.finance.model;

import com.finance.entity.BaseDomain;

/**
 * author lvzhi
 * ClassName: TreeGridModel
 * Description: 编辑菜单用到的数据模型
 * date 2015年9月21日 下午3:45:50
 */

public class TreeGridModel extends BaseDomain {
    private int permissionId;
    private int pid;
    private String name;
    private String pname;
    private int sort;
    private String myId;
    private String type;
    private String isused;
    private String url;
    private String iconCls;
    private String status;
    private String description;
    private String state;


    public int getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(int permissionId) {
        this.permissionId = permissionId;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public String getMyId() {
        return myId;
    }

    public void setMyId(String myId) {
        this.myId = myId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getIsused() {
        return isused;
    }

    public void setIsused(String isused) {
        this.isused = isused;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }



}
