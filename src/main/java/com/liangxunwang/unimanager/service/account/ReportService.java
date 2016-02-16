package com.liangxunwang.unimanager.service.account;

import com.liangxunwang.unimanager.dao.RecordDao;
import com.liangxunwang.unimanager.dao.ReportDao;
import com.liangxunwang.unimanager.mvc.vo.RecordVO;
import com.liangxunwang.unimanager.mvc.vo.ReportVO;
import com.liangxunwang.unimanager.query.RecordQuery;
import com.liangxunwang.unimanager.query.ReportQuery;
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
@Service("reportService")
public class ReportService implements ListService {
    @Autowired
    @Qualifier("reportDao")
    private ReportDao reportDao;

    @Override
    public Object list(Object object) throws ServiceException {
        ReportQuery query = (ReportQuery) object;
        Map<String, Object> map = new HashMap<String, Object>();
        int index = (query.getIndex() - 1) * query.getSize();
        int size = query.getIndex() * query.getSize();

        map.put("index", index);
        map.put("size", size);

        if (!StringUtil.isNullOrEmpty(query.getIs_use())) {
            map.put("is_use", query.getIs_use());
        }

        List<ReportVO> lists = reportDao.lists(map);
        long count = reportDao.count(map);

        return new Object[]{lists, count};
    }



}
