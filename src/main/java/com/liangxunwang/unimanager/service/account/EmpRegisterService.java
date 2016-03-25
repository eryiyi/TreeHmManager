package com.liangxunwang.unimanager.service.account;

import com.liangxunwang.unimanager.dao.EmpDao;
import com.liangxunwang.unimanager.model.Emp;
import com.liangxunwang.unimanager.service.SaveService;
import com.liangxunwang.unimanager.service.ServiceException;
import com.liangxunwang.unimanager.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * Created by liuzwei on 2015/1/29.
 */
@Service("empRegisterService")
public class EmpRegisterService implements SaveService {
    @Autowired
    @Qualifier("empDao")
    private EmpDao memberDao;

    @Override
    public Object save(Object object) {
        Emp member = (Emp) object;
        Emp checkMember = memberDao.findByMobile(member.getMm_emp_mobile());
        if (checkMember != null){
            throw new ServiceException("MobileIsUse");
        }
        member.setMm_emp_id(UUIDFactory.random());//设置ID
        member.setMm_emp_regtime(DateUtil.getDateAndTime());//时间戳
        member.setMm_emp_cover(Constants.COVER_DEFAULT);//头像
        member.setMm_emp_password(new MD5Util().getMD5ofStr(member.getMm_emp_password()));//密码加密
        if(!StringUtil.isNullOrEmpty(member.getMm_emp_endtime())){
            member.setMm_emp_endtime(DateUtil.getMs(member.getMm_emp_endtime(), "yyyy-MM-dd") + "");
        }
        try {
            memberDao.save(member);
        }catch (Exception e){
            throw new ServiceException(Constants.SAVE_ERROR);
        }
        return member;
    }

}
