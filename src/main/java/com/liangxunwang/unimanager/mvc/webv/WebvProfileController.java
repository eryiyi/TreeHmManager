package com.liangxunwang.unimanager.mvc.webv;

import com.liangxunwang.unimanager.mvc.vo.EmpAdVO;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import com.liangxunwang.unimanager.query.EmpAdQuery;
import com.liangxunwang.unimanager.query.RecordQuery;
import com.liangxunwang.unimanager.service.ExecuteService;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.util.ControllerConstants;
import com.liangxunwang.unimanager.util.Page;
import com.liangxunwang.unimanager.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by liuzh on 2015/8/12.
 */
@Controller
@RequestMapping("/webvProfile")
public class WebvProfileController extends ControllerConstants {

    @Autowired
    @Qualifier("empService")
    private ExecuteService empService;


    @Autowired
    @Qualifier("empAdService")
    private ListService empAdService;

    @Autowired
    @Qualifier("webVRecordService")
    private ListService recordService;


    @RequestMapping("toProfile")
    public String add(ModelMap map,RecordQuery query, Page page) throws Exception {
        if(!StringUtil.isNullOrEmpty(query.getMm_emp_id())){
            EmpVO empVO = (EmpVO) empService.execute(query.getMm_emp_id());
            map.put("emp", empVO);
            //获得用户的轮播图
            EmpAdQuery queryad = new EmpAdQuery();
            queryad.setMm_emp_id(empVO.getMm_emp_id());
            List<EmpAdVO> list = (List<EmpAdVO>) empAdService.list(queryad);
            map.put("empAdVO", list);
            //查询用户动态

            query.setIndex(page.getPage() == 0 ? 1 : page.getPage());
            query.setSize(query.getSize() == 0 ? page.getDefaultSize() : query.getSize());
            query.setMm_msg_type("0");

            //说明已经登陆
            query.setAccessToken(empVO.getAccess_token());
            query.setProvinceid(empVO.getMm_emp_provinceId());
            query.setCityid(empVO.getMm_emp_cityId());
            query.setCountryid(empVO.getMm_emp_countryId());

            //当前登陆者的等级vip 0  -- 4
            if(!StringUtil.isNullOrEmpty(empVO.getMm_level_num())){
                query.setMm_level_num(empVO.getMm_level_num());
            } else {
                query.setMm_level_num("");
            }

            Object[] results = (Object[]) recordService.list(query);
            map.put("list", results[0]);
            long count = (Long) results[1];
            page.setCount(count);
            page.setPageCount(calculatePageCount(query.getSize(), count));
            map.addAttribute("page", page);
            map.addAttribute("query", query);
        }
        return "/webv/profile";

    }


}
