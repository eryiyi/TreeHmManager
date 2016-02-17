package com.liangxunwang.unimanager.mvc.app;

import com.liangxunwang.unimanager.model.*;
import com.liangxunwang.unimanager.model.tip.DataTip;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import com.liangxunwang.unimanager.query.CityQuery;
import com.liangxunwang.unimanager.query.CountryQuery;
import com.liangxunwang.unimanager.query.EmpQuery;
import com.liangxunwang.unimanager.query.LevelQuery;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.ControllerConstants;
import com.liangxunwang.unimanager.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by liuzh on 2015/8/12.
 */
@Controller
public class AppEmpController extends ControllerConstants {
    @Autowired
    @Qualifier("empService")
    private ListService empServiceList;

    @Autowired
    @Qualifier("empService")
    private UpdateService empServiceUpdate;

    @Autowired
    @Qualifier("levelService")
    private ListService levelService;

    @Autowired
    @Qualifier("provinceService")
    private ListService provinceService;

    @Autowired
    @Qualifier("cityService")
    private ListService cityService;
    @Autowired
    @Qualifier("countryService")
    private ListService countryService;


    @Autowired
    @Qualifier("empService")
    private ExecuteService empServiceExecute;

    @Autowired
    @Qualifier("logoService")
    private SaveService logoService;

    @RequestMapping(value = "/getMemberInfoById", produces = "text/plain;charset=UTF-8;")
    @ResponseBody
    public String getMemberInfoById(String id){
        try {
            //查看该会员信息
            EmpVO empVO = (EmpVO) empServiceExecute.execute(id);
            DataTip tip = new DataTip();
            tip.setData(empVO);
            return toJSONString(tip);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }

}
