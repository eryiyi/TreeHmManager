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

    //更新会员数据
    void update(Emp emp);

    //根据用户ID查询用户信息
    EmpVO findById(String mm_emp_id);

    /**
     * 根据手机号查找会员
     * @param mm_emp_mobile
     * @return
     */
    EmpVO findByMobile(String mm_emp_mobile);

    //保存会员信息
    void save(Emp emp);

    //更新会员数据--经纬度
    void updateLoacation(Emp emp);
    //修改用户密码
    void updatePwr(Emp emp);

    /**
     * 查询附近商家
     */
    List<EmpVO> listsLocation(Map<String, Object> map);
}
