package com.liangxunwang.unimanager.dao;

import com.liangxunwang.unimanager.model.Admin;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * Created by liuzwei on 2015/1/29.
 */
@Repository("adminDao")
public interface AdminDao {
    Admin findByUsername(String mm_manager_mobile);
    Admin findByEmpId(String mm_manager_id);

    void add(Admin admin);

    void delete(String id);


    /**
     * 根据ID修改密码
     * @param id
     * @param pass
     */
    void updatePass(@Param(value = "id")String id, @Param(value = "pass") String pass);

    /**
     * 查询所有的后台管理员信息
     */
    List<Admin> lists(Map<String, Object> map);
    long count(Map<String,Object> map);

}
