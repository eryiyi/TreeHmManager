package com.liangxunwang.unimanager.service.account;

import com.liangxunwang.unimanager.dao.EmpDao;
import com.liangxunwang.unimanager.query.BaseAreaQuery;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.service.ServiceException;
import com.liangxunwang.unimanager.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liuzwei on 2015/3/3.
 */
@Service("indexService")
public class IndexService implements ListService {
    @Autowired
    @Qualifier("empDao")
    private EmpDao empDao;

    @Override
    public Object list(Object object) throws ServiceException {
        BaseAreaQuery query = (BaseAreaQuery) object;
        Map<String, Object> map = new HashMap<String, Object>();
        if(!StringUtil.isNullOrEmpty(query.getMm_emp_provinceId())){
            map.put("mm_emp_provinceId", query.getMm_emp_provinceId());
        }
        if(!StringUtil.isNullOrEmpty(query.getMm_emp_cityId())){
            map.put("mm_emp_cityId", query.getMm_emp_cityId());
        }
        if(!StringUtil.isNullOrEmpty(query.getMm_emp_countryId())){
            map.put("mm_emp_countryId", query.getMm_emp_countryId());
        }
        //总共会员数量
        long memberCount = empDao.count(map);
        //待审核的数量
        map.put("ischeck", "0");
        long memberCountNo = empDao.count(map);
        List<Long> list = new ArrayList<Long>();
        list.add(memberCount);
        list.add(memberCountNo);
        return list;
    }
}
