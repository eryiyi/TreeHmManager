package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.model.*;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import com.liangxunwang.unimanager.query.*;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.ControllerConstants;
import com.liangxunwang.unimanager.util.Page;
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
@RequestMapping("/emp")
public class EmpController extends ControllerConstants {
    @Autowired
    @Qualifier("empService")
    private ListService empServiceList;

    @Autowired
    @Qualifier("empService")
    private UpdateService empServiceUpdate;

    @Autowired
    @Qualifier("levelService")
    private ListService levelService;

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
    @Qualifier("empService")
    private ExecuteService empServiceExecute;

    @RequestMapping("list")
    public String list(HttpSession session,ModelMap map, EmpQuery query, Page page){
        query.setIndex(page.getPage() == 0 ? 1 : page.getPage());
        query.setSize(query.getSize() == 0 ? page.getDefaultSize() : query.getSize());
        query.setMm_emp_type("0");//苗木经营户
        Object[] results = (Object[]) empServiceList.list(query);
        map.put("list", results[0]);
        long count = (Long) results[1];
        page.setCount(count);
        page.setPageCount(calculatePageCount(query.getSize(), count));
        map.addAttribute("page", page);
        map.addAttribute("query", query);
        //查询等级
        LevelQuery levelQuery = new LevelQuery();
        List<Level> list = (List<Level>) levelService.list(levelQuery);
        map.put("listLevels", list);
        return "/emp/list";
    }

    @RequestMapping("listEmp")
    public String listEmp(HttpSession session,ModelMap map, EmpQuery query, Page page){
        query.setIndex(page.getPage() == 0 ? 1 : page.getPage());
        query.setSize(query.getSize() == 0 ? page.getDefaultSize() : query.getSize());
        query.setMm_emp_type("1");//苗木会员
        Object[] results = (Object[]) empServiceList.list(query);
        map.put("list", results[0]);
        long count = (Long) results[1];
        page.setCount(count);
        page.setPageCount(calculatePageCount(query.getSize(), count));
        map.addAttribute("page", page);
        map.addAttribute("query", query);
        return "/emp/list";
    }

    @RequestMapping("/detail")
    public String updateType(ModelMap map, HttpSession session, String mm_emp_id){
        //查看该会员信息
        EmpVO empVO = (EmpVO) empServiceExecute.execute(mm_emp_id);
        //vip星级
        LevelQuery query = new LevelQuery();
        List<Level> list = (List<Level>) levelService.list(query);
        //查询省份
        List<ProvinceObj> listProvinces = (List<ProvinceObj>) provinceService.list("");
        //查询地市
        CityQuery cityQuery = new CityQuery();
        cityQuery.setFather(empVO.getMm_emp_provinceId());
        List<CityObj> listCitys = (List<CityObj>) cityService.list(cityQuery);
        //查询县区
        CountryQuery countryQuery = new CountryQuery();
        countryQuery.setFather(empVO.getMm_emp_cityId());
        List<CountryObj> listsCountry = (List<CountryObj>) countryService.list(countryQuery);
        map.put("listLevels", list);
        map.put("empVO", empVO);
        map.put("listProvinces", listProvinces);
        map.put("listCitys", listCitys);
        map.put("listsCountry", listsCountry);

        //查询地市all
        CityQuery cityQueryAll = new CityQuery();
        List<CityObj> listCitysAll = (List<CityObj>) cityService.list(cityQueryAll);
        //查询县区all
        CountryQuery countryQueryAll = new CountryQuery();
        List<CountryObj> listsCountryAll = (List<CountryObj>) countryService.list(countryQueryAll);
        map.put("listCitysAll", listCitysAll);
        map.put("listsCountryAll", listsCountryAll);

        return "/emp/detail";
    }



    //更改会员数据
    @RequestMapping("/updateEmp")
    @ResponseBody
    public String updateEmp(Emp emp){
        try {
            empServiceUpdate.update(emp);
            return toJSONString(SUCCESS);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }

}
