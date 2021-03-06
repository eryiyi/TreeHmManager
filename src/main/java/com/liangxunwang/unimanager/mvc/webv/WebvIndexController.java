package com.liangxunwang.unimanager.mvc.webv;

import com.liangxunwang.unimanager.model.*;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import com.liangxunwang.unimanager.query.*;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.ControllerConstants;
import com.liangxunwang.unimanager.util.Page;
import com.liangxunwang.unimanager.util.StringUtil;
import cz.msebera.android.httpclient.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

@Controller
@RequestMapping("/webv")
public class WebvIndexController extends ControllerConstants {

    @Autowired
    @Qualifier("webVRecordService")
    private ListService recordService;

    @Autowired
    @Qualifier("provinceService")
    private ListService provinceService;

    @Autowired
    @Qualifier("cityService")
    private ListService cityService;
    @Autowired
    @Qualifier("countryService")
    private ListService countryService;

    @Autowired
    @Qualifier("adObjService")
    private ListService adObjService;

    @RequestMapping("toIndex")
    public String add(HttpSession session, ModelMap map, RecordQuery query, Page page,HttpServletRequest request) {
        EmpVO emp = (EmpVO) session.getAttribute(MEMBER_KEY);

        query.setIndex(page.getPage() == 0 ? 1 : page.getPage());
        query.setSize(query.getSize() == 0 ? page.getDefaultSize() : query.getSize());
        query.setMm_msg_type("0");

        if(emp != null){
            //说明已经登陆
            query.setAccessToken(emp.getAccess_token());
            query.setProvinceid(emp.getMm_emp_provinceId());
            query.setCityid(emp.getMm_emp_cityId());
            query.setCountryid(emp.getMm_emp_countryId());

            //当前登陆者的等级vip 0  -- 4
            if(!StringUtil.isNullOrEmpty(emp.getMm_level_num())){
                query.setMm_level_num(emp.getMm_level_num());
            } else {
                query.setMm_level_num("");
            }

            //权限-- 查看全部信息
            if(!StringUtil.isNullOrEmpty(emp.getIs_see_all())){
                query.setIs_see_all(emp.getIs_see_all());
            }else {
                query.setIs_see_all("");
            }

            //是否是选择的县区
            if(!StringUtil.isNullOrEmpty(query.getCountryid())){
                query.setIs_select_countryId(query.getIs_select_countryId());
            }

        }else{
            //说明没有登陆
        }

        try {
            Object[] results = (Object[]) recordService.list(query);
            map.put("list", results[0]);
            long count = (Long) results[1];
            page.setCount(count);
            page.setPageCount(calculatePageCount(query.getSize(), count));
            map.addAttribute("page", page);
            map.addAttribute("query", query);
            map.addAttribute("mm_msg_type", "0");
            request.setAttribute("list", results[0]);
        }catch (ServiceException e){
            String msg = e.getMessage();
            if (msg.equals("accessTokenNull")){
                return "/webv/login";
            }else{
                return "/webv/login";
            }
        }

        //查询省份
//        ProvinceQuery provinceQuery = new ProvinceQuery();
//        provinceQuery.setIs_use("1");
//        List<ProvinceObj> listProvinces = (List<ProvinceObj>) provinceService.list(provinceQuery);
//        //查询地市all
//        CityQuery cityQueryAll = new CityQuery();
//        cityQueryAll.setIs_use("1");
//        List<CityObj> listCitysAll = (List<CityObj>) cityService.list(cityQueryAll);
//        //查询县区all
//        CountryQuery countryQueryAll = new CountryQuery();
//        countryQueryAll.setIs_use("1");
//        List<CountryObj> listsCountryAll = (List<CountryObj>) countryService.list(countryQueryAll);
//
//        map.put("listProvinces", listProvinces);
//        map.put("listCitysAll", toJSONString(listCitysAll));
//        map.put("listsCountryAll", toJSONString(listsCountryAll));

        if(emp != null){
            //说明已经登陆
            map.put("is_login", "1");
            map.put("emp", emp);
        }else{
            //说明没有登陆
            map.put("is_login", "0");
        }

        //查询广告
        AdQuery queryad = new AdQuery();
        queryad.setMm_ad_type("0");
        List<AdObj> listAd = (List<AdObj>) adObjService.list(queryad);
        map.put("listAd", listAd);
        return "/webv/index";
    }


}
