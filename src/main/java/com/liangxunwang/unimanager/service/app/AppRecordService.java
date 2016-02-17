package com.liangxunwang.unimanager.service.app;

import com.liangxunwang.unimanager.dao.RecordDao;
import com.liangxunwang.unimanager.model.Record;
import com.liangxunwang.unimanager.mvc.vo.RecordVO;
import com.liangxunwang.unimanager.query.RecordQuery;
import com.liangxunwang.unimanager.service.*;
import com.liangxunwang.unimanager.util.*;
import com.qiniu.common.QiniuException;
import com.qiniu.storage.BucketManager;
import com.qiniu.util.Auth;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * Created by liuzwei on 2015/3/3.
 */
@Service("appRecordService")
public class AppRecordService implements ListService ,SaveService, FindService{
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

        List<RecordVO> list = recordDao.listRecordVo(map);
        long count = recordDao.count(map);

        for (RecordVO record : list){
            if (!StringUtil.isNullOrEmpty(record.getMm_emp_cover())){
                if (record.getMm_emp_cover().startsWith("upload")){
                    record.setMm_emp_cover(Constants.URL+record.getMm_emp_cover());
                }else {
                    record.setMm_emp_cover(Constants.QINIU_URL + record.getMm_emp_cover());
                }
            }
            //处理图片URL链接
            StringBuffer buffer = new StringBuffer();
            String[] pics = new String[]{};
            if(record!=null && record.getMm_msg_picurl()!=null){
                pics = record.getMm_msg_picurl().split(",");
            }
            for (int i=0; i<pics.length; i++){
                if (pics[i].startsWith("upload")) {
                    buffer.append(Constants.URL + pics[i]);
                    if (i < pics.length - 1) {
                        buffer.append(",");
                    }
                }else {
                    buffer.append(Constants.QINIU_URL + pics[i]);
                    if (i < pics.length - 1) {
                        buffer.append(",");
                    }
                }
            }
            record.setDateline(RelativeDateFormat.format(Long.parseLong(record.getDateline())));
        }

        return new Object[]{list, count};
    }


    @Override
    public Object save(Object object) throws ServiceException {
        Record record = (Record) object;
//        record.setRecordCont(CommonUtil.replaceBlank(record.getRecordCont()));
        record.setDateline(System.currentTimeMillis() + "");

        record.setIs_del("0");
        record.setIs_top("0");
        record.setTop_num("0");
        recordDao.save(record);
        return null;
    }


    @Override
    public Object findById(Object object) throws ServiceException {
        RecordVO vo = recordDao.findById((String) object);
        if (vo != null) {
            if (vo.getMm_emp_cover().startsWith("upload")) {
                vo.setMm_emp_cover(Constants.URL + vo.getMm_emp_cover());
            }else {
                vo.setMm_emp_cover(Constants.QINIU_URL + vo.getMm_emp_cover());
            }
            vo.setDateline(RelativeDateFormat.format(Long.parseLong(vo.getDateline())));
            if (!StringUtil.isNullOrEmpty(vo.getMm_msg_picurl())) {
                String[] pic = vo.getMm_msg_picurl().split(",");
                StringBuffer buffer = new StringBuffer();
                for (int i = 0; i < pic.length; i++) {
                    if (pic[i].startsWith("upload")) {
                        buffer.append(Constants.URL + pic[i]);
                        if (i < pic.length - 1) {
                            buffer.append(",");
                        }
                    }else {
                        buffer.append(Constants.QINIU_URL + pic[i]);
                        if (i < pic.length - 1) {
                            buffer.append(",");
                        }
                    }
                }
                vo.setMm_msg_picurl(buffer.toString());
            }
        }
        return vo;
    }

//    @Override
//    public Object delete(Object object) throws ServiceException {
//        Auth auth = Auth.create(ControllerConstants.QINIU_AK, ControllerConstants.QINIU_SK);
//        BucketManager bucketManager = new BucketManager(auth);
//        String recordId = (String) object;
//        if (!StringUtil.isNullOrEmpty(recordId)) {
//            RecordVO record  = recordDao.findById(recordId);
//
//            //图片不为空  删除七牛空间的图片
//            if (!StringUtil.isNullOrEmpty(record.getMm_msg_picurl())){
//                if (!record.getMm_msg_picurl().startsWith("upload")){
//                    String[] picKeys = record.getMm_msg_picurl().split(",");
//                    for (int i=0; i<picKeys.length; i++){
//                        try {
//                            bucketManager.delete(Constants.QINIU_SPACE, picKeys[i]);
//                        } catch (QiniuException e) {
//                            throw new ServiceException("ERROR");
//                        }
//                    }
//                }
//            }
//            //删除动态
//            recordDao.deleteById(recordId);
//        }else {
//            throw new ServiceException("ERROR");
//        }
//        return null;
//    }
}
