package com.finance.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.Company;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.CompanyService;
import com.finance.utils.Constants;
import com.finance.utils.ExcelUtil;
import com.finance.utils.PageUtil;

/**
 * 公司信息控制器
 */
@Controller
@RequestMapping(value = "/manage/comp")
public class MgrCompController extends BaseController {

    private final Logger LOGGER = LoggerFactory.getLogger(MgrCompController.class);

    @Autowired
    private CompanyService companyService;

    @RequestMapping("/compMain")
    public String compMain() {
        LOGGER.debug("compMain() is executed!");
        return "manage/company/companyMain";
    }

    /**
     * 分页查询公司信息
     */
    @ResponseBody
    @RequestMapping(value = "/findComp")
    public GridModel findComp(HttpServletRequest request) {
        LOGGER.debug("findComp() is executed!");
        int pageNo = Integer.parseInt(request.getParameter("page"));
        int length = Integer.parseInt(request.getParameter("rows"));
        PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
        GridModel gridModel = new GridModel();
        gridModel.setRows(companyService.findComp(pageUtil));
        gridModel.setTotal(companyService.getCount(null));
        return gridModel;
    }


    @ResponseBody
    @RequestMapping(value = "/findSuperComp")
    public List<Company> findSuperComp() {
        return companyService.findSuperComp();
    }


    /**
     * 弹出添加公司层
     * return
     */
    @RequestMapping(value = "/companyEditDlg", method = RequestMethod.GET)
    public ModelAndView companyEditDlg() {

        LOGGER.debug("companyEditDlg() is executed!");

        ModelAndView model = new ModelAndView();
        model.setViewName("manage/company/companyEditDlg");

        return model;
    }


    /**
     * 添加或者修改公司信息,需要在控制器上也添加权限控制
     * <p>
     * param company 表单中的字段必须是Company类的直接属性的子集
     * return
     */
    @RequiresPermissions({"compAdd", "compEdit"})
    @ResponseBody
    @RequestMapping(value = "/saveOrUpdateComp")
    public String saveOrUpdateComp(Company company) {
        Json json = getMessage(companyService.persistenceComp(company));
        return JSONArray.toJSONString(json);
    }


    /**
     * 删除公司信息,在删除之前判断是否包含组织信息
     * param request
     * return
     */
    @RequiresPermissions({"compDel"})
    @ResponseBody
    @RequestMapping(value = "/delComp")
    public String delComp(HttpServletRequest request) {
        String id = request.getParameter("companyId");

        Json json = new Json();
        if (companyService.delComp(id)) {
            json.setStatus(true);
            json.setMessage(Constants.POST_DATA_SUCCESS);
        } else {
            json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
        }
        return JSONArray.toJSONString(json);
    }

    /**
     * 导出excel，注意该方法不能使用ajax调用，因为ajax不支持流
     * param request
     * param response
     * return  /blog/{blogId}/message/{msgId}
     */
    @RequestMapping(value = "/excelExport/{compId}")
    public ResponseEntity<byte[]> excelExport(@PathVariable("compId") String companyId, HttpServletRequest request) {
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
        String excelName = format.format(new Date());
        String path = "Company-" + excelName + ".xls";

        //获取绝对路径,如果realPath获取不到,尝试更换getRealPath方法的参数
        String realPath = request.getSession().getServletContext().getRealPath("/");

        String allPath = realPath + "download" + File.separator + path;

        FileOutputStream out = null;
        try {
            out = new FileOutputStream(allPath);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        //获取company资料写入文件
        List<Company> list = new ArrayList<>();
        list.add(companyService.findById(Integer.parseInt(companyId)));
        ExcelUtil<Company> util = new ExcelUtil<>(Company.class);
        util.exportExcel(list, "Sheet", 60000, out);

        //下载文件处理
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        headers.setContentDispositionFormData("attachment", path);
        byte[] bytes = new byte[0];
        try {
            File file = new File(allPath);
            bytes = FileUtils.readFileToByteArray(file);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<>(bytes, headers, HttpStatus.CREATED);
    }
}