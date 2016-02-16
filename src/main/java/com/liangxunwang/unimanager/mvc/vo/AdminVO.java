package com.liangxunwang.unimanager.mvc.vo;

import com.liangxunwang.unimanager.model.Admin;
import com.liangxunwang.unimanager.model.CityObj;

/**
 * Created by Administrator on 2016/2/14.
 */
public class AdminVO extends Admin{
    private String areaName;

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }
}
