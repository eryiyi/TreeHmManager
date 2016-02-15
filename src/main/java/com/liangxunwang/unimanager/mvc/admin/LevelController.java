package com.liangxunwang.unimanager.mvc.admin;

import com.liangxunwang.unimanager.model.FeiyongObj;
import com.liangxunwang.unimanager.model.Level;
import com.liangxunwang.unimanager.model.Member;
import com.liangxunwang.unimanager.query.LevelQuery;
import com.liangxunwang.unimanager.query.MemberQuery;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.ControllerConstants;
import org.apache.ibatis.annotations.Update;
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
@RequestMapping("/level")
public class LevelController extends ControllerConstants {

    @Autowired
    @Qualifier("levelService")
    private ListService levelService;

    @Autowired
    @Qualifier("levelService")
    private SaveService levelServiceSave;

    @Autowired
    @Qualifier("levelService")
    private ExecuteService levelServiceSaveExe;

    @Autowired
    @Qualifier("levelService")
    private UpdateService levelServiceSaveUpdate;

    @Autowired
    @Qualifier("levelService")
    private DeleteService levelServiceSaveDel;

    @RequestMapping("list")
    public String list(ModelMap map, LevelQuery query){
        List<Level> list = (List<Level>) levelService.list(query);
        map.put("list", list);
        return "/level/list";
    }

    @RequestMapping("add")
    public String add(ModelMap map, LevelQuery query){
        return "/level/addlevel";
    }

    @RequestMapping("addLevel")
    @ResponseBody
    public String addPiao(Level level){
        levelServiceSave.save(level);
        return toJSONString(SUCCESS);
    }

    @RequestMapping("delete")
    @ResponseBody
    public String delete(String mm_level_id){
        levelServiceSaveDel.delete(mm_level_id);
        return toJSONString(SUCCESS);
    }

    @RequestMapping("/edit")
    public String toUpdateType(ModelMap map, String typeId){
        Level level = (Level) levelServiceSaveExe.execute(typeId);
        map.put("levelObj", level);
        return "/level/editlevel";
    }

    /**
     * 更新
     * @param level
     * @return
     */
    @RequestMapping("/editLevel")
    @ResponseBody
    public String updateGoodsType(Level level){
        try {
            levelServiceSaveUpdate.update(level);
            return toJSONString(SUCCESS);
        }catch (ServiceException e){
            return toJSONString(ERROR_1);
        }
    }



}
