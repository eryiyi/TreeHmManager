package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.model.Level;
import com.liangxunwang.unimanager.model.ProvinceObj;
import com.liangxunwang.unimanager.query.LevelQuery;
import com.liangxunwang.unimanager.query.ProvinceQuery;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.ControllerConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by liuzh on 2015/8/12.
 */
@Controller
@RequestMapping("/province")
public class ProvinceController extends ControllerConstants {

    @Autowired
    @Qualifier("provinceService")
    private ListService provinceService;


    @RequestMapping("list")
    public String list(ModelMap map, ProvinceQuery query){
        List<ProvinceObj> list = (List<ProvinceObj>) provinceService.list(query);
        map.put("list", list);
        return "/province/list";
    }


}
