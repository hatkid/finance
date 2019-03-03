package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.BaseDomain;
import com.finance.entity.Permission;
import com.finance.entity.Role;
import com.finance.entity.RolePermission;
import com.finance.service.RoleService;
import com.finance.utils.Constants;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

/**
 * topic
 * author: lvzhi
 * create: 2016/4/8 9:23
 */
@Transactional
@Service("roleService")
public class RoleServiceImpl extends BaseServiceImpl<Role> implements RoleService {

    private final Logger LOGGER = LoggerFactory.getLogger(RoleServiceImpl.class);

    @Override
    public List<Role> findAllRoleList(PageUtil pageUtil) {
        LOGGER.info("开始查找用户信息,分页显示");
        List<Role> roleList = roleMapper.findAllByPage(pageUtil);
        return roleList;
    }

    @Override
    public Long getCount(Map<String, Object> paramMap) {
        LOGGER.info("开始查找用户信息的总条数");
        return roleMapper.getCount(paramMap);
    }

    /**
     * 新增和修改角色
     * param role
     * return
     */
    @Override
    public boolean persistenceRole(Role role) {
        Integer userId = Constants.getCurrendUser().getUserId();

        if (StringUtil.isEmpty(role.getRoleId() + "")) {
            BaseDomain.createLog(role, userId);
            role.setStatus(Constants.PERSISTENCE_STATUS);
            roleMapper.insert(role);

            // 这里设置新增用户的默认权限,首先获取所有的默认且有效的权限
            List<Permission> pList = permissionMapper.findAllDefault();
            //然后逐一添加进映射表
            for (Permission permission : pList) {
                RolePermission rolePermission;
                rolePermission = new RolePermission();
                rolePermission.setStatus(Constants.PERSISTENCE_STATUS);
                BaseDomain.createLog(rolePermission, userId);
                rolePermission.setPermissionId(permission.getPermissionId());
                rolePermission.setRoleId(role.getRoleId());
                rolePermissionMapper.insert(rolePermission);
            }
        } else {
            BaseDomain.editLog(role, userId);
            roleMapper.update(role);
        }
        return true;
    }

    @Override
    public boolean delRole(int id) {
        //first，判断是否有角色权限记录
        List<RolePermission> iList = rolePermissionMapper.findAllByRoleId(id);
        if (iList.size() > 0) {
            return false;
        } else {
            //second，判断是否有用户角色记录 TODO
            //end,都没有，可以删除，否则不能删除。
            return roleMapper.delete(id) > 0;
        }
    }
}
