package com.magicalcoder.youyamvc.app.school.service.impl;

import com.magicalcoder.youyamvc.app.school.dao.SchoolProxyDao;
import com.magicalcoder.youyamvc.app.school.service.SchoolProxyService;
import com.magicalcoder.youyamvc.app.school.service.SchoolService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
/**
    代理类 保证了service dao的自动生成 有改动业务 直接写在此类处
*/
/**
* Created by www.magicalcoder.com
* 799374340@qq.com
*/
@Component("schoolProxyService")
public class SchoolProxyServiceImpl implements SchoolProxyService{

    @Resource(name="schoolProxyDao")
    private SchoolProxyDao schoolProxyDao;

    @Resource(name="schoolService")
    private SchoolService schoolService;

}
