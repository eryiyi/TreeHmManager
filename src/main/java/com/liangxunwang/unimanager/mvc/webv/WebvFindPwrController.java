package com.liangxunwang.unimanager.mvc.webv;

import com.liangxunwang.unimanager.util.ControllerConstants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liuzh on 2015/8/12.
 */
@Controller
@RequestMapping("/webvFindPwrController")
public class WebvFindPwrController extends ControllerConstants {

    @RequestMapping("toFindPwr")
    public String toLogin(){
        return "/webv/findpwr";
    }


}
