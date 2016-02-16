package com.liangxunwang.unimanager.dao;

import com.liangxunwang.unimanager.model.Emp;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by liuzwei on 2015/1/29.
 */
@Repository("empDao")
public interface EmpDao {

    /**
     * 查询所有的会员信息
     */
    List<EmpVO> listMemberByName(Map<String, Object> map);
    long count(Map<String,Object> map);


    //更新宝宝数据---最终一步
    void update(Emp emp);

    //根据用户ID查询用户信息
    EmpVO findById(String mm_emp_id);
}
