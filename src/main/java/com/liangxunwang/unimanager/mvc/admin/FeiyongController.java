package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.model.FeiyongObj;
import com.liangxunwang.unimanager.model.Level;
import com.liangxunwang.unimanager.query.FeiyongQuery;
import com.liangxunwang.unimanager.query.LevelQuery;
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
@RequestMapping("/feiyong")
public class FeiyongController extends ControllerConstants {

    @Autowired
    @Qualifier("feiyongService")
    private ListService feiyongServiceList;

    @Autowired
    @Qualifier("feiyongService")
    private SaveService feiyongServiceSave;

    @Autowired
    @Qualifier("feiyongService")
    private DeleteService feiyongServiceDelete;

    @Autowired
    @Qualifier("feiyongService")
    private ExecuteService feiyongServiceExe;


    @Autowired
    @Qualifier("feiyongService")
    private UpdateService feiyongServiceUpdate;

    @RequestMapping("list")
    public String list(ModelMap map, FeiyongQuery query){
        List<FeiyongObj> list = (List<FeiyongObj>) feiyongServiceList.list(query);
        map.put("list", list);
        return "/feiyong/list";
    }

    @RequestMapping("add")
    public String add(ModelMap map, FeiyongQuery query){
        return "/feiyong/addfeiyong";
    }

    @RequestMapping("addFeiyong")
    @ResponseBody
    public String addPiao(FeiyongObj feiyongObj){
        feiyongServiceSave.save(feiyongObj);
        return toJSONString(SUCCESS);
    }


    @RequestMapping("delete")
    @ResponseBody
    public String delete(String mm_feiyong_id){
        feiyongServiceDelete.delete(mm_feiyong_id);
        return toJSONString(SUCCESS);
    }

    @RequestMapping("/edit")
    public String toUpdateType(ModelMap map, String typeId){
        FeiyongObj feiyong = (FeiyongObj) feiyongServiceExe.execute(typeId);
        map.put("feiyong", feiyong);
        return "/feiyong/editfeiyong";
    }

    /**
     * 更新
     * @param feiyongObj
     * @return
     */
    @RequestMapping("/editFeiyong")
    @ResponseBody
    public String updateGoodsType(FeiyongObj feiyongObj){
        try {
            feiyongServiceUpdate.update(feiyongObj);
            return toJSONString(SUCCESS);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }

}
