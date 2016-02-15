package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.query.RecordQuery;
import com.liangxunwang.unimanager.query.ReportQuery;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.util.ControllerConstants;
import com.liangxunwang.unimanager.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by liuzh on 2015/8/12.
 */
@Controller
@RequestMapping("/report")
public class ReportController extends ControllerConstants {
    @Autowired
    @Qualifier("reportService")
    private ListService reportService;


    @RequestMapping("list")
    public String listQiugou(HttpSession session,ModelMap map, ReportQuery query, Page page){
        query.setIndex(page.getPage() == 0 ? 1 : page.getPage());
        query.setSize(query.getSize() == 0 ? page.getDefaultSize() : query.getSize());
        Object[] results = (Object[]) reportService.list(query);
        map.put("list", results[0]);
        long count = (Long) results[1];
        page.setCount(count);
        page.setPageCount(calculatePageCount(query.getSize(), count));
        map.addAttribute("page", page);
        map.addAttribute("query", query);
        return "report/list";
    }


}
