package com.liangxunwang.unimanager.dao;

import com.liangxunwang.unimanager.mvc.vo.LogoVO;
import com.liangxunwang.unimanager.mvc.vo.RecordVO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by liuzwei on 2015/1/29.
 */
@Repository("logoDao")
public interface LogoDao {

    /**
     * 查询日志信息
     */
    List<LogoVO> listRecordVo(Map<String, Object> map);
    long count(Map<String, Object> map);


}
