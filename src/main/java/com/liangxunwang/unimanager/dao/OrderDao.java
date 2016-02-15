package com.liangxunwang.unimanager.dao;

import com.liangxunwang.unimanager.model.ReportObj;
import com.liangxunwang.unimanager.mvc.vo.OrderVO;
import com.liangxunwang.unimanager.mvc.vo.ReportVO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by liuzwei on 2015/1/29.
 */
@Repository("orderDao")
public interface OrderDao {

    /**
     * 查询订单
     */
    List<OrderVO> lists(Map<String, Object> map);
    long count(Map<String, Object> map);


}
