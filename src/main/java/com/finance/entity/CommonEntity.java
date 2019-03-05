package com.finance.entity;

import java.io.Serializable;

/**
 * @author lvzhi
 * @version 创建时间：2019年3月5日 上午10:40:14
 * @ClassName 类名称
 * @Description 类描述
 */
public class CommonEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4431397413864840169L;

	// 创建者
	private int row_creater;

	// 编辑者
	private int row_modifier;

	// 创建时间
	private String row_create_time;

	// 修改时间
	private String row_modify_time;

	// 行状态
	private int row_state;
	
	// 页码
	private int page;
	
	// 每页数据
	private int rows;

	public CommonEntity() {
	}

	public CommonEntity(int row_creater, int row_modifier, String row_create_time, String row_modify_time,
			int row_state) {
		super();
		this.row_creater = row_creater;
		this.row_modifier = row_modifier;
		this.row_create_time = row_create_time;
		this.row_modify_time = row_modify_time;
		this.row_state = row_state;
	}

	public double getRow_creater() {
		return row_creater;
	}

	public void setRow_creater(int row_creater) {
		this.row_creater = row_creater;
	}

	public double getRow_modifier() {
		return row_modifier;
	}

	public void setRow_modifier(int row_modifier) {
		this.row_modifier = row_modifier;
	}

	public String getRow_create_time() {
		return row_create_time;
	}

	public void setRow_create_time(String row_create_time) {
		this.row_create_time = row_create_time;
	}

	public String getRow_modify_time() {
		return row_modify_time;
	}

	public void setRow_modify_time(String row_modify_time) {
		this.row_modify_time = row_modify_time;
	}

	public int getRow_state() {
		return row_state;
	}

	public void setRow_state(int row_state) {
		this.row_state = row_state;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}
	
	
	

}
