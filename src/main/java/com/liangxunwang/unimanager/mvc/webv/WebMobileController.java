package com.liangxunwang.unimanager.mvc.webv;

import com.liangxunwang.unimanager.util.ControllerConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.liangxunwang.unimanager.service.webv.WebMobileService;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

/**
 * Created by liuke on 2016/4/7 0007.
 *微信打电话控制
 */
@Controller
@RequestMapping("/webMobileController")
public class WebMobileController  extends ControllerConstants {
//    @Autowired
//    @Qualifier("webMobileService")
//    private WebMobileService webMobileService;

    @RequestMapping("/callMobiles")
    @ResponseBody
    public String CallMobiles(String  mobile,HttpServletRequest request){
        System.out.print("mobile:"+mobile);
        Enumeration names = request.getHeaderNames();
        while(names.hasMoreElements()){
            String name = (String)names.nextElement();
            System.out.println("<b>" + name + ":</b>" + request.getHeader(name) + "<br />");
            System.out.println(name + ":" + request.getHeader(name) + "");
        }
        String str="succsse";
        return toJSONString(str);
    }
}
