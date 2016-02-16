package com.liangxunwang.unimanager.dao;

import com.liangxunwang.unimanager.model.CityObj;
import com.liangxunwang.unimanager.model.ProvinceObj;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * Created by liuzwei on 2015/1/29.
 */
@Repository("cityDao")
public interface CityDao {

    /**
     * 查询城市根据省
     */
    List<CityObj> lists(Map<String, Object> map);


    //保存
    void save(CityObj level);


}
