package com.liangxunwang.unimanager.dao;

import com.liangxunwang.unimanager.model.CityObj;
import com.liangxunwang.unimanager.model.CountryObj;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by liuzwei on 2015/1/29.
 */
@Repository("countryDao")
public interface CountryDao {

    /**
     * 查询区县根据城市ID
     */
    List<CountryObj> lists(Map<String, Object> map);


    //保存
    void save(CountryObj countryObj);


}
