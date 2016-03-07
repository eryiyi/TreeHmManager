package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.model.Admin;
import com.liangxunwang.unimanager.model.KefuTel;
import com.liangxunwang.unimanager.model.LogoObj;
import com.liangxunwang.unimanager.query.KefuQuery;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.ControllerConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/kefu")
public class KefuController extends ControllerConstants {
    @Autowired
    @Qualifier("kefuTelService")
    private ListService levelService;

    @Autowired
    @Qualifier("kefuTelService")
    private SaveService levelServiceSave;

    @Autowired
    @Qualifier("kefuTelService")
    private UpdateService levelServiceSaveUpdate;

    @Autowired
    @Qualifier("kefuTelService")
    private ExecuteService levelServiceSaveExe;

    @Autowired
    @Qualifier("logoService")
    private SaveService logoService;

    @RequestMapping("list")
    public String list(HttpSession session,ModelMap map, KefuQuery query){
        Admin manager = (Admin) session.getAttribute(ACCOUNT_KEY);
        List<KefuTel> list = (List<KefuTel>) levelService.list(query);
        map.put("list", list);
        //日志记录
        logoService.save(new LogoObj("查看客服", manager.getMm_manager_id()));
        return "/kefu/list";
    }

    @RequestMapping("add")
    public String add(ModelMap map, KefuQuery query){
        return "/kefu/addfuwu";
    }

    @RequestMapping("addKefu")
    @ResponseBody
    public String addPiao(HttpSession session,KefuTel level){
        Admin manager = (Admin) session.getAttribute(ACCOUNT_KEY);
        levelServiceSave.save(level);
        //日志记录
        logoService.save(new LogoObj("添加客服", manager.getMm_manager_id()));
        return toJSONString(SUCCESS);
    }


    @RequestMapping("/edit")
    public String toUpdateType(HttpSession session,ModelMap map, String typeId){
        Admin manager = (Admin) session.getAttribute(ACCOUNT_KEY);
        KefuTel level = (KefuTel) levelServiceSaveExe.execute(typeId);
        map.put("levelObj", level);
        //日志记录
        logoService.save(new LogoObj("编辑客服："+level.getMm_tel_id(), manager.getMm_manager_id()));
        return "/kefu/editkefu";
    }

    /**
     * 更新
     * @param kefuTel
     * @return
     */
    @RequestMapping("/editKefu")
    @ResponseBody
    public String editKefu(HttpSession session,KefuTel kefuTel){
        Admin manager = (Admin) session.getAttribute(ACCOUNT_KEY);
        try {
            levelServiceSaveUpdate.update(kefuTel);
            //日志记录
            logoService.save(new LogoObj("编辑客服："+kefuTel.getMm_tel_id(), manager.getMm_manager_id()));
            return toJSONString(SUCCESS);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }

}
