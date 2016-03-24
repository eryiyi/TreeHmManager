package com.liangxunwang.unimanager.service.account;

import com.liangxunwang.unimanager.dao.PaihangObjDao;
import com.liangxunwang.unimanager.dao.RecordDao;
import com.liangxunwang.unimanager.model.PaihangObj;
import com.liangxunwang.unimanager.model.Record;
import com.liangxunwang.unimanager.mvc.vo.PaihangObjVO;
import com.liangxunwang.unimanager.mvc.vo.RecordVO;
import com.liangxunwang.unimanager.query.PaihangQuery;
import com.liangxunwang.unimanager.query.RecordQuery;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.Constants;
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
@Service("paihangService")
public class PaihangService implements ListService,DeleteService,ExecuteService,UpdateService {
    @Autowired
    @Qualifier("paihangObjDao")
    private PaihangObjDao paihangObjDao;

    @Override
    public Object list(Object object) throws ServiceException {
        PaihangQuery query = (PaihangQuery) object;
        Map<String, Object> map = new HashMap<String, Object>();
        int index = (query.getIndex() - 1) * query.getSize();
        int size = query.getIndex() * query.getSize();

        map.put("index", index);
        map.put("size", size);

        if (!StringUtil.isNullOrEmpty(query.getIs_del())) {
            map.put("is_del", query.getIs_del());
        }

        List<PaihangObjVO> lists = paihangObjDao.listRecordVo(map);
        for (PaihangObjVO record : lists){
            if (!StringUtil.isNullOrEmpty(record.getMm_emp_cover())){
                if (record.getMm_emp_cover().startsWith("upload")){
                    record.setMm_emp_cover(Constants.URL+record.getMm_emp_cover());
                }else {
                    record.setMm_emp_cover(Constants.QINIU_URL + record.getMm_emp_cover());
                }
            }
//            record.setDateline(RelativeDateFormat.format(Long.parseLong(record.getDateline())));
        }
        long count = paihangObjDao.count(map);
        return new Object[]{lists, count};
    }


    @Override
    public Object delete(Object object) throws ServiceException {
        String mm_paihang_id = (String) object;
        paihangObjDao.deleteById(mm_paihang_id);
        return null;
    }

    @Override
    public Object execute(Object object) throws ServiceException {
        String mm_msg_id = (String) object;
        PaihangObj paihangObj = paihangObjDao.findById(mm_msg_id);
        return paihangObj;
    }

    @Override
    public Object update(Object object) {
        if (object instanceof Record){
            PaihangObj paihangObj = (PaihangObj) object;
            paihangObjDao.updateTop(paihangObj);
        }
        return null;
    }
}
