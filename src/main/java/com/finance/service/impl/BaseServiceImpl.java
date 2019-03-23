package com.finance.service.impl;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.finance.dao.BaseMapper;
import com.finance.dao.CompanyFinanceMapper;
import com.finance.dao.PermissionMapper;
import com.finance.dao.RoleMapper;
import com.finance.dao.RolePermissionMapper;
import com.finance.dao.RunningAccountMapper;
import com.finance.dao.SalesReportMapper;
import com.finance.dao.SupplierDetailMapper;
import com.finance.dao.UserRoleMapper;
import com.finance.dao.UsersMapper;
import com.finance.service.BaseService;
import com.finance.utils.GenericsUtils;

@Transactional
public class BaseServiceImpl<T> implements BaseService<T> {

	protected BaseMapper<T> baseMapper;
	@Autowired
	protected UsersMapper usersMapper;
	@Autowired
	protected PermissionMapper permissionMapper;
	@Autowired
	protected RoleMapper roleMapper;
	@Autowired
	protected RolePermissionMapper rolePermissionMapper;
	@Autowired
	protected UserRoleMapper userRoleMapper;
	
	// 财务软件相关mapper
	@Autowired
	protected CompanyFinanceMapper companyFinanceMapper;
	@Autowired
	protected SupplierDetailMapper supplierDetailMapper;
	@Autowired
	protected SalesReportMapper salesReportMapper;
	@Autowired
	protected RunningAccountMapper runningAccountMapper;

	@SuppressWarnings("rawtypes")
	private Class clazz = null;

	public BaseServiceImpl() {
		clazz = GenericsUtils.getSuperClassGenricType(this.getClass(), 0);
	}

	/**
	 * 这个方法会在构造函数和spring依赖注入之后执行
	 * <p>
	 * param throws Exception 设定文件 return void 返回类型 Title: init Description:
	 * 通过反射来实例化baseMapper
	 */
	@PostConstruct
	public void init() throws Exception {
		String objName = clazz.getSimpleName();
		String objMapperName = objName.substring(0, 1).toLowerCase()
				+ objName.substring(1) + "Mapper";
		Field mapperNameField = this.getClass().getSuperclass()
				.getDeclaredField(objMapperName);
		Object object = mapperNameField.get(this);
		Field baseMapperNameField = this.getClass().getSuperclass()
				.getDeclaredField("baseMapper");
		baseMapperNameField.set(this, object);

	}

	@Override
	public int insert(T t) {
		return baseMapper.insert(t);
	}

	@Override
	public int update(T t) {
		return baseMapper.update(t);
	}

	@Override
	public int delete(int id) {
		return baseMapper.delete(id);
	}

	@Override
	public T findById(int id) {
		return baseMapper.findById(id);
	}

	@Override
	public List<T> findAll() {
		return baseMapper.findAll();
	}

	@Override
	public Long getCount(Map<String, Object> paramMap) {
		return baseMapper.getCount(paramMap);
	}

}
