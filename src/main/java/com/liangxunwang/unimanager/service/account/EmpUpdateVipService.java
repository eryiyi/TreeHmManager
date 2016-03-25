package com.liangxunwang.unimanager.service.account;

import com.liangxunwang.unimanager.dao.EmpDao;
import com.liangxunwang.unimanager.model.Emp;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import com.liangxunwang.unimanager.query.EmpQuery;
import com.liangxunwang.unimanager.service.ExecuteService;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.service.ServiceException;
import com.liangxunwang.unimanager.service.UpdateService;
import com.liangxunwang.unimanager.util.Constants;
import com.liangxunwang.unimanager.util.DateUtil;
import com.liangxunwang.unimanager.util.MD5Util;
import com.liangxunwang.unimanager.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 */
@Service("empUpdateVipService")
public class EmpUpdateVipService implements UpdateService {
    @Autowired
    @Qualifier("empDao")
    private EmpDao empDao;

    @Override
    public Object update(Object object) {
        if (object instanceof Emp){
            Emp emp = (Emp) object;
            if(emp != null && !StringUtil.isNullOrEmpty(emp.getMm_emp_password())){
                emp.setMm_emp_password(new MD5Util().getMD5ofStr(emp.getMm_emp_password()));//密码加密
                empDao.updatePwr(emp);
            }else {
                if(emp != null && !StringUtil.isNullOrEmpty(emp.getMm_emp_cover()) && !emp.getMm_emp_cover().startsWith("http://")){
                    empDao.updateCover(emp);
                }
                if(!StringUtil.isNullOrEmpty(emp.getMm_emp_endtime())){
                    emp.setMm_emp_endtime(DateUtil.getMs(emp.getMm_emp_endtime(), "yyyy-MM-dd") + "");
                }
                empDao.update(emp);
            }
        }
        return null;
    }

}
