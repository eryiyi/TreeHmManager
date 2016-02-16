package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.model.CityObj;
import com.liangxunwang.unimanager.model.ProvinceObj;
import com.liangxunwang.unimanager.mvc.vo.CityVO;
import com.liangxunwang.unimanager.query.CityQuery;
import com.liangxunwang.unimanager.query.ProvinceQuery;
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
@RequestMapping("/city")
public class CityController extends ControllerConstants {

    @Autowired
    @Qualifier("cityVOService")
    private ListService cityVoService;


    @RequestMapping("list")
    public String list(ModelMap map, CityQuery query){
        List<CityVO> list = (List<CityVO>) cityVoService.list(query);
        map.put("list", list);
        return "/city/list";
    }


}
