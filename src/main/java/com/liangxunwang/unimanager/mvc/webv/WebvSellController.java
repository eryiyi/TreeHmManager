package com.liangxunwang.unimanager.mvc.webv;

import com.liangxunwang.unimanager.util.ControllerConstants;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liuzh on 2015/8/12.
 */
@Controller
@RequestMapping("/webvSell")
public class WebvSellController extends ControllerConstants {

    @RequestMapping("toSell")
    public String add(ModelMap map){

        return "/webv/sell";
    }


}
