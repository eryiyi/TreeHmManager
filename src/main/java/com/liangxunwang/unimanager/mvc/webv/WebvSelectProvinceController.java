package com.liangxunwang.unimanager.mvc.webv;

import com.liangxunwang.unimanager.model.AccessToken;
import com.liangxunwang.unimanager.model.ProvinceObj;
import com.liangxunwang.unimanager.mvc.vo.CityVO;
import com.liangxunwang.unimanager.mvc.vo.CountryVO;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import com.liangxunwang.unimanager.query.CityQuery;
import com.liangxunwang.unimanager.query.CountryQuery;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.ControllerConstants;
import com.liangxunwang.unimanager.util.StringUtil;
import com.liangxunwang.unimanager.util.UUIDFactory;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by zhl on 2015/8/12.
 */
@Controller
@RequestMapping("/webvSelectProvinceController")
public class WebvSelectProvinceController extends ControllerConstants {
    @Autowired
    @Qualifier("appProvinceService")
    private ListService appProvinceService;

    @RequestMapping("toSelectProvince")
    public String toSelectProvince(HttpSession session,ModelMap map){
        List<ProvinceObj> list = (List<ProvinceObj>) appProvinceService.list(null);
        map.put("list", list);
        return "/webv/select_province";
    }


    @Autowired
    @Qualifier("cityVOService")
    private ListService cityVoService;

    @RequestMapping("toSelectCity")
    public String toSelectCity(HttpSession session,ModelMap map,CityQuery query){
        List<CityVO> list = (List<CityVO>) cityVoService.list(query);
        map.put("list", list);
        return "/webv/select_city";
    }


    @Autowired
    @Qualifier("countryVOService")
    private ListService countryVOService;

    @RequestMapping("toSelectArea")
    public String toSelectArea(HttpSession session,ModelMap map,CountryQuery query){
        List<CountryVO> list = (List<CountryVO>) countryVOService.list(query);
        map.put("list", list);
        return "/webv/select_area";
    }

}
