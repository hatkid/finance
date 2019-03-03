package com.finance.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.BaseDomain;
import com.finance.entity.UserRole;
import com.finance.entity.Users;
import com.finance.service.UsersService;
import com.finance.utils.Constants;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("usersService")
public class UsersServiceImpl extends BaseServiceImpl<Users> implements UsersService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UsersService.class);

    @Override
    public List<Users> findAll() {
        LOGGER.debug("run the users findall");
        return usersMapper.findAll();
    }

    @Override
    public Users getUserByName(String name) {

        return usersMapper.findByName(name);
    }

    @Override
    public boolean persistenceUser(Users user) {
        Integer userId = Constants.getCurrendUser().getUserId();

        if (StringUtil.isEmpty(user.getUserId() + "")) {
            BaseDomain.createLog(user, userId);
            user.setStatus(Constants.PERSISTENCE_STATUS);
            usersMapper.insert(user);
        } else {
            BaseDomain.editLog(user, userId);
            usersMapper.update(user);
        }
        return true;
    }

    /**
     * 分页查询用户信息
     * param pageUtil
     * return
     * param pageUtil
     */
    @Override
    public List<Users> allUserByPage(PageUtil pageUtil) {
        LOGGER.info("开始查找用户信息,分页显示");
        List<Users> userList = usersMapper.findAllByPage(pageUtil);
        return userList;
    }

    @Override
    public boolean delUser(int userId) {
        List<UserRole> urList = userRoleMapper.findAllByUserId(userId);
        return usersMapper.delete(userId) > 0;
    }

	@Override
	public List<Users> searchUser(Users u) {
        return usersMapper.searchUser(u);
	}

	@Override
	public List searchUserByPage(PageUtil pageUtil, Users u) {
		List<Users> userList = usersMapper.searchUserByPage(pageUtil,u);
        return userList;
	}

	@Override
	public int savePass(Users u) {
		return usersMapper.savePass(u);
	}
	
	
	@Override
    public Users getUser(Users u) {

        return usersMapper.getUser(u);
    }
}
