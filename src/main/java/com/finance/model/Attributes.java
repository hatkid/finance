/**
 * Title: Attributes.java
 * Package com.lvzhi.model
 * author lvzhi
 * date 2015年9月23日 上午11:17:19
 * version V1.0
 */

package com.finance.model;

import com.finance.entity.BaseDomain;

/**
 * ClassName: Attributes
 * Description: 状态属性, TreeModel模型中调用
 * author lvzhi
 * date 2015年9月23日 上午11:17:19
 *
 */

public class Attributes extends BaseDomain {
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
