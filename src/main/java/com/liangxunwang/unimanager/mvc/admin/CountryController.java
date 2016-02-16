package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.mvc.vo.CityVO;
import com.liangxunwang.unimanager.mvc.vo.CountryVO;
import com.liangxunwang.unimanager.query.CityQuery;
import com.liangxunwang.unimanager.query.CountryQuery;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.util.ControllerConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by liuzh on 2015/8/12.
 */
@Controller
@RequestMapping("/country")
public class CountryController extends ControllerConstants {

    @Autowired
    @Qualifier("countryVOService")
    private ListService countryVOService;


    @RequestMapping("list")
    public String list(ModelMap map, CountryQuery query){
        List<CountryVO> list = (List<CountryVO>) countryVOService.list(query);
        map.put("list", list);
        return "/country/list";
    }


}
