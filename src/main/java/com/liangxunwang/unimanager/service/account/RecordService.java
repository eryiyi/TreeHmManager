package com.liangxunwang.unimanager.service.account;

import com.liangxunwang.unimanager.dao.RecordDao;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import com.liangxunwang.unimanager.mvc.vo.RecordVO;
import com.liangxunwang.unimanager.query.EmpQuery;
import com.liangxunwang.unimanager.query.MemberQuery;
import com.liangxunwang.unimanager.query.RecordQuery;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.service.ServiceException;
import com.liangxunwang.unimanager.service.UpdateService;
import com.liangxunwang.unimanager.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liuzwei on 2015/3/3.
 */
@Service("recordService")
public class RecordService implements ListService {
    @Autowired
    @Qualifier("recordDao")
    private RecordDao recordDao;

    @Override
    public Object list(Object object) throws ServiceException {
        RecordQuery query = (RecordQuery) object;
        Map<String, Object> map = new HashMap<String, Object>();
        int index = (query.getIndex() - 1) * query.getSize();
        int size = query.getIndex() * query.getSize();

        map.put("index", index);
        map.put("size", size);

        if (!StringUtil.isNullOrEmpty(query.getMm_msg_type())) {
            map.put("mm_msg_type", query.getMm_msg_type());
        }
        if (!StringUtil.isNullOrEmpty(query.getProvinceid())) {
            map.put("provinceid", query.getProvinceid());
        }
        if (!StringUtil.isNullOrEmpty(query.getCityid())) {
            map.put("cityid", query.getCityid());
        }
        if (!StringUtil.isNullOrEmpty(query.getCountryid())) {
            map.put("countryid", query.getCountryid());
        }

        List<RecordVO> lists = recordDao.listRecordVo(map);
        long count = recordDao.count(map);

        return new Object[]{lists, count};
    }



}
