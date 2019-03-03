package com.finance.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.BaseDomain;
import com.finance.entity.Permission;
import com.finance.entity.RolePermission;
import com.finance.service.RolePermissionService;
import com.finance.utils.Constants;
import com.finance.utils.StringUtil;

/**
 * topic
 * author: lvzhi
 * create: 2016/4/8 9:23
 */
@Transactional
@Service("rolePermissionService")
public class RolePermissionServiceImpl extends BaseServiceImpl<RolePermission> implements RolePermissionService {

    private final Logger LOGGER = LoggerFactory.getLogger(RolePermissionServiceImpl.class);

    @Override
    public List<Permission> findAllByRoleId(int roleId) {
        LOGGER.info("开始读取id为" + roleId + "的角色权限信息");
        List<Permission> permissions = new ArrayList<>();
        List<RolePermission> idList = rolePermissionMapper.findAllByRoleId(roleId);
        for (RolePermission rolePermission : idList) {
            Permission permission = new Permission();
            permission.setPermissionId(rolePermission.getPermissionId());
            permissions.add(permission);
        }
        return permissions;
    }

    /**
     * 保存选取的权限与角色映射
     * param roleId
     * param checkedIds
     * return
     */
    @Override
    public boolean savePermission(int roleId, String checkedIds) {
        Integer userId = Constants.getCurrendUser().getUserId();

        Map<String, RolePermission> map = new HashMap<>();

        List<RolePermission> rolePermissionList = rolePermissionMapper.findAllByRoleId(roleId);
        for (RolePermission rolePermission : rolePermissionList) {
            Integer permissionId = rolePermission.getPermissionId();
            map.put(permissionId.toString(), rolePermission);
            updRolePermission(userId, rolePermission, Constants.PERSISTENCE_DELETE_STATUS);
        }
        if (null != checkedIds && !"".equals(checkedIds)) {
            String[] ids = checkedIds.split(",");
            for (String id : ids) {
                if (!StringUtil.compareRegex(Constants.REGEX_INTEGER, id)) {
                    continue;
                }
                RolePermission rolePermission = map.get(id);
                if (rolePermission != null) {
                    updRolePermission(userId, rolePermission, Constants.PERSISTENCE_STATUS);
                } else {
                    rolePermission = new RolePermission();
                    BaseDomain.createLog(rolePermission, userId);
                    rolePermission.setStatus(Constants.PERSISTENCE_STATUS);
                    rolePermission.setPermissionId(Integer.parseInt(id));
                    rolePermission.setRoleId(roleId);
                    rolePermissionMapper.insert(rolePermission);
                }
                map.remove(id);
            }
        }
        for (Map.Entry<String, RolePermission> entry : map.entrySet()) {
            rolePermissionMapper.delete(entry.getValue().getRpId());
        }

        return true;
    }

    private void updRolePermission(Integer userId, RolePermission rolePermission, String status) {
        BaseDomain.editLog(rolePermission, userId);
        rolePermission.setStatus(status);
        rolePermissionMapper.update(rolePermission);
    }

}
