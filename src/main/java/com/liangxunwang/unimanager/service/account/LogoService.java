package com.liangxunwang.unimanager.service.account;

import com.liangxunwang.unimanager.dao.LogoDao;
import com.liangxunwang.unimanager.dao.RecordDao;
import com.liangxunwang.unimanager.mvc.vo.LogoVO;
import com.liangxunwang.unimanager.mvc.vo.RecordVO;
import com.liangxunwang.unimanager.query.LogoQuery;
import com.liangxunwang.unimanager.query.RecordQuery;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.service.ServiceException;
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
@Service("logoService")
public class LogoService implements ListService {
    @Autowired
    @Qualifier("logoDao")
    private LogoDao logoDao;

    @Override
    public Object list(Object object) throws ServiceException {
        LogoQuery query = (LogoQuery) object;
        Map<String, Object> map = new HashMap<String, Object>();
        int index = (query.getIndex() - 1) * query.getSize();
        int size = query.getIndex() * query.getSize();

        map.put("index", index);
        map.put("size", size);

        List<LogoVO> lists = logoDao.listRecordVo(map);
        long count = logoDao.count(map);

        return new Object[]{lists, count};
    }



}
