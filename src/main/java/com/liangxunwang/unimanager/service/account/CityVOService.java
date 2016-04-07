package com.liangxunwang.unimanager.service.account;

import com.liangxunwang.unimanager.dao.CityDao;
import com.liangxunwang.unimanager.model.CityObj;
import com.liangxunwang.unimanager.mvc.vo.CityVO;
import com.liangxunwang.unimanager.query.CityQuery;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.service.SaveService;
import com.liangxunwang.unimanager.service.ServiceException;
import com.liangxunwang.unimanager.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zhl on 2015/3/3.
 */
@Service("cityVOService")
public class CityVOService implements ListService{
    @Autowired
    @Qualifier("cityDao")
    private CityDao cityDao;

    @Override
    public Object list(Object object) throws ServiceException {
        CityQuery query = (CityQuery) object;
        Map<String, Object> map = new HashMap<String, Object>();
        if(!StringUtil.isNullOrEmpty(query.getFather())){
            map.put("father", query.getFather());
        }
        List<CityVO> lists = cityDao.listsVo(map);
        return lists;
    }





}
