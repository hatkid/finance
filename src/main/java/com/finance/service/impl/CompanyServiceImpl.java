package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.BaseDomain;
import com.finance.entity.Company;
import com.finance.service.CompanyService;
import com.finance.utils.Constants;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

/**
 * topic 公司信息处理业务类
 * author lvzhi
 * create 2016/4/4 15:12
 */
@Transactional
@Service("companyService")
public class CompanyServiceImpl extends BaseServiceImpl<Company> implements CompanyService {

    private final Logger LOGGER = LoggerFactory.getLogger(CompanyServiceImpl.class);

    @Override
    public List<Company> findComp(PageUtil pageUtil) {
        LOGGER.info("开始查找公司信息,分页显示");
        List<Company> compList = companyMapper.findAllByPage(pageUtil);
        return compList;
    }

    @Override
    public Long getCount(Map<String, Object> paramMap) {
        LOGGER.info("开始查找公司信息的总条数");
        return companyMapper.getCount(paramMap);
    }

    @Override
    public boolean delComp(String compId) {
//        List<Organization> oList = organizationMapper.findByCompId(Integer.parseInt(compId));
//        //如果公司下面还有组织信息，则不能删除
//        if (oList.size() > 0) {
//            return false;
//        } else {
//            return companyMapper.delete(Integer.parseInt(compId)) > 0;
//        }
    	
    	return true;

    }

    @Override
    public boolean persistenceComp(Company company) {

        Integer userId = Constants.getCurrendUser().getUserId();
        if (StringUtil.isEmpty(company.getCompanyId() + "")) {
            BaseDomain.createLog(company, userId);
            company.setStatus(Constants.PERSISTENCE_STATUS);
            companyMapper.insert(company);
        } else {
            BaseDomain.editLog(company, userId);
            companyMapper.update(company);
        }
        return true;
    }

    /**
     * 查找所有的公司信息，用于组织资料添加和修改选择
     * return
     */
    @Override
    public List<Company> findSuperComp() {
        return companyMapper.findSuperComp();
    }

}
