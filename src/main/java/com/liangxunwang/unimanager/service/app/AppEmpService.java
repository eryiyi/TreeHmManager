package com.liangxunwang.unimanager.service.app;

import com.liangxunwang.unimanager.dao.EmpDao;
import com.liangxunwang.unimanager.model.Emp;
import com.liangxunwang.unimanager.mvc.vo.EmpVO;
import com.liangxunwang.unimanager.query.EmpQuery;
import com.liangxunwang.unimanager.service.ExecuteService;
import com.liangxunwang.unimanager.service.ListService;
import com.liangxunwang.unimanager.service.ServiceException;
import com.liangxunwang.unimanager.service.UpdateService;
import com.liangxunwang.unimanager.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 */
@Service("appEmpService")
public class AppEmpService implements  UpdateService {
    @Autowired
    @Qualifier("empDao")
    private EmpDao empDao;

   //上传用户定位数据  经纬度
    @Override
    public Object update(Object object) {
        if (object instanceof Emp){
            Emp emp = (Emp) object;
            empDao.updateLoacation(emp);
        }
        return null;
    }


}
