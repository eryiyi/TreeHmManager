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
import com.liangxunwang.unimanager.util.MD5Util;
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
    private ExecuteService empServiceExecute;


    @RequestMapping(value = "/getMemberInfoById", produces = "text/plain;charset=UTF-8;")
    @ResponseBody
    public String getMemberInfoById(String id) throws Exception {
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

    @Autowired
    @Qualifier("appEmpService")
    private UpdateService appEmpService;

    @RequestMapping(value = "/sendLocation", produces = "text/plain;charset=UTF-8;")
    @ResponseBody
    public String sendLocation(String mm_emp_id,String lat, String lng){
        try {
            //保存用户定位数据
            Emp emp = new Emp();
            emp.setMm_emp_id(mm_emp_id);
            emp.setLat(lat);
            emp.setLng(lng);
            appEmpService.update(emp);
            DataTip tip = new DataTip();
            tip.setData(tip);
            return toJSONString(tip);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }


    @RequestMapping(value = "/updatePwr", produces = "text/plain;charset=UTF-8;")
    @ResponseBody
    public String updatePwr(String mm_emp_mobile,String newpass,String mm_emp_card){
        try {
            //修改用户密码
            Emp emp = new Emp();
            emp.setMm_emp_mobile(mm_emp_mobile);
            emp.setMm_emp_password(newpass);
            emp.setMm_emp_card(mm_emp_card);
            appEmpService.update(emp);
            DataTip tip = new DataTip();
            tip.setData(tip);
            return toJSONString(tip);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }

    @Autowired
    @Qualifier("appEmpService")
    private ListService appEmpServiceList;


    @RequestMapping(value = "/getNearby", produces = "text/plain;charset=UTF-8;")
    @ResponseBody
    public String getNearby(String lat, String lng){
        try {
            List<EmpVO> lists = (List<EmpVO>)appEmpServiceList.list("");
            DataTip tip = new DataTip();
            tip.setData(lists);
            return toJSONString(tip);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }

}
