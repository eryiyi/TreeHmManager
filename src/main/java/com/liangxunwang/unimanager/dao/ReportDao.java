package com.liangxunwang.unimanager.dao;

import com.liangxunwang.unimanager.model.Level;
import com.liangxunwang.unimanager.model.ReportObj;
import com.liangxunwang.unimanager.mvc.vo.ReportVO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by liuzwei on 2015/1/29.
 */
@Repository("reportDao")
public interface ReportDao {

    /**
     * 查询举报
     */
    List<ReportVO> lists(Map<String, Object> map);
    long count(Map<String, Object> map);

    //删除
    void delete(String mm_report_id);

    /**
     * 根据ID查找
     * @param mm_report_id
     * @return
     */
    public ReportObj findById(String mm_report_id);

    /**
     * 更新
     * @param reportObj
     */
    public void update(ReportObj reportObj);
}
