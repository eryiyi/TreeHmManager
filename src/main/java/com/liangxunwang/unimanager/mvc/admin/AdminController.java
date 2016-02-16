package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.model.Admin;
import com.liangxunwang.unimanager.model.Level;
import com.liangxunwang.unimanager.query.AdminQuery;
import com.liangxunwang.unimanager.query.EmpQuery;
import com.liangxunwang.unimanager.query.LevelQuery;
import com.liangxunwang.unimanager.service.ExecuteService;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.service.ServiceException;
import com.liangxunwang.unimanager.service.UpdateService;
import com.liangxunwang.unimanager.util.ControllerConstants;
import com.liangxunwang.unimanager.util.Page;
import com.liangxunwang.unimanager.util.StringUtil;
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
public class AdminController extends ControllerConstants {

    @Autowired
    @Qualifier("adminService")
    private ExecuteService adminExecuteService;


    @Autowired
    @Qualifier("adminService")
    private ListService adminListService;
    /**
     * �޸�����
     * @param session
     * @param ePass ԭ����
     * @param pass  ������
     * @return
     */
    @RequestMapping("/changePass")
    @ResponseBody
    public String changePass(HttpSession session, String ePass, String pass){
        try {
            Admin manager = (Admin) session.getAttribute(ACCOUNT_KEY);
            if (manager == null){
                return toJSONString(ERROR_2);//û�е�¼
            }
            //���ԭ��������֤��ͨ�����ø���
            if (!manager.getMm_manager_password().equals(ePass)){
                return toJSONString(ERROR_3);
            }
            Object[] params = new Object[]{manager.getMm_manager_id(), pass};
            adminExecuteService.execute(params);
            session.removeAttribute(ACCOUNT_KEY);
            return toJSONString(SUCCESS);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }

    @RequestMapping("/toChangePass")
    public String toChanagePass(){
        return "/admin/pass";
    }

    @RequestMapping("/admin/list")
    public String list(HttpSession session,ModelMap map, AdminQuery query, Page page){
        query.setIndex(page.getPage() == 0 ? 1 : page.getPage());
        query.setSize(query.getSize() == 0 ? page.getDefaultSize() : query.getSize());
        Object[] results = (Object[]) adminListService.list(query);
        map.put("list", results[0]);
        long count = (Long) results[1];
        page.setCount(count);
        page.setPageCount(calculatePageCount(query.getSize(), count));
        map.addAttribute("page", page);
        map.addAttribute("query", query);
        return "/admin/list";
    }
}
