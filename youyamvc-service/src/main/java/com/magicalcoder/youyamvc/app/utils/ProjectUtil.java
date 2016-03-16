package com.magicalcoder.youyamvc.app.utils;

import com.magicalcoder.youyamvc.core.common.utils.MapUtil;
import com.magicalcoder.youyamvc.core.common.utils.StringUtils;

import java.lang.reflect.Field;
import java.util.Map;

/**
 * Created by www.magicalcoder.com on 2015/5/22.
 * 799374340@qq.com
 */
public class ProjectUtil {
    public static Map<String,Object> buildMap(String key,Object value ,Object... args){
        return MapUtil.buildMap(key, value, args);
    }

    //验证是否合法字符串 逗号分隔 数字中间
    public static boolean validIds(String ids){
        String reg = "[\\d,]+";
        return ids.matches(reg);
    }

    public static String reflectShowValue(String clazzFields, Object clazz){
        if(StringUtils.isNotBlank(clazzFields)){
            String[] attr = clazzFields.split(",");
            StringBuffer sb = new StringBuffer();
            Field fields[]=clazz.getClass().getDeclaredFields();//获得对象所有属性
            Field field=null;
            try {

                for (int i = 0; i < fields.length; i++) {
                    field=fields[i];
                    field.setAccessible(true);//修改访问权限
                    for (int j = 0; j < attr.length; j++) {
                        if (attr[j].equals(field.getName())) {
                                sb.append(field.get(clazz)).append("-");
                        }
                    }
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
            return StringUtils.deleteLastChar(sb.toString());
        }
        return null;
    }
    public static Object reflectValue(String clazzField, Object clazz){
        if(StringUtils.isNotBlank(clazzField)){
            Field fields[]=clazz.getClass().getDeclaredFields();//获得对象所有属性
            Field field=null;
            try {

                for (int i = 0; i < fields.length; i++) {
                    field=fields[i];
                    field.setAccessible(true);//修改访问权限
                    if (clazzField.equals(field.getName())) {
                        return field.get(clazz);
                    }
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
