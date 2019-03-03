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
import com.finance.entity.Role;
import com.finance.entity.UserRole;
import com.finance.service.UserRoleService;
import com.finance.utils.Constants;
import com.finance.utils.StringUtil;

/**
 * topic
 * author: lvzhi
 * create: 2016/4/13 9:27
 */
@Transactional
@Service("userRoleService")
public class UserRoleServiceImpl extends BaseServiceImpl<UserRole> implements UserRoleService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserRoleServiceImpl.class);

    /**
     * 好代码自己会说话
     * param roleId
     * return
     *
     * @param userId
     */
    @Override
    public List<Role> findAllByUserId(int userId) {
        LOGGER.info("开始读取id为" + userId + "的用户信息");
        List<Role> rList = new ArrayList<>();
        List<UserRole> urList = userRoleMapper.findAllByUserId(userId);
        for (UserRole i : urList) {
            Role role = new Role();
            role.setRoleId(i.getRoleId());
            rList.add(role);
        }
        return rList;
    }

    /**
     * 保存分配角色权限
     * 处理逻辑：根据用户查找所有的已有角色信息，然后全部删除，最后赋予新角色
     * param roleId 角色id
     * param checkedIds 菜单权限ID集合
     * return
     * param userId
     * param checkedIds
     */
    @Override
    public boolean saveRole(int userId, String checkedIds) {
        Integer currentUserId = Constants.getCurrendUser().getUserId();

        List<UserRole> urList = userRoleMapper.findAllByUserId(userId);
        Map<Integer, UserRole> map = new HashMap<>();
        for (UserRole userRole : urList) {
            map.put(userRole.getRoleId(), userRole);
            BaseDomain.editLog(userRole, currentUserId);
            userRole.setStatus(Constants.PERSISTENCE_DELETE_STATUS);
            userRoleMapper.update(userRole);
        }
        if (!"".equals(checkedIds) && checkedIds.length() != 0) {
            String[] ids = checkedIds.split(",");

            for (String id : ids) {
                if (!StringUtil.compareRegex(Constants.REGEX_INTEGER, id)) {
                    continue;
                }
                int tempId = Integer.parseInt(id);

                UserRole userRole;
                if (map.containsKey(tempId)) {
                    userRole = map.get(tempId);
                    userRole.setStatus(Constants.PERSISTENCE_STATUS);
                    BaseDomain.editLog(userRole, currentUserId);
                    userRoleMapper.update(userRole);
                } else {
                    userRole = new UserRole();
                    userRole.setRoleId(tempId);
                    userRole.setUserId(userId);
                    BaseDomain.createLog(userRole, currentUserId);
                    userRole.setStatus(Constants.PERSISTENCE_STATUS);
                    userRoleMapper.insert(userRole);
                }
            }
        }
        for (Map.Entry<Integer, UserRole> entry : map.entrySet()) {
            userRoleMapper.delete(entry.getValue().getUrId());
        }
        return true;
    }
}
