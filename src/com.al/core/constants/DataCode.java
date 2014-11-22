package com.al.core.constants;

import java.util.*;

/**
 * User: RgiMQ
 * Date: 14-8-11
 * Time: 下午6:15
 */
public class DataCode {
    public static Map DATA_CODE_MAP = null;
    static {
        try {
            Locale locale = new Locale("zh","CN");
            ResourceBundle developer = ResourceBundle.getBundle("data_code", locale);
            Set<String> strings  = developer.keySet();
            DATA_CODE_MAP = new HashMap();
            for (Object o:strings) {
                DATA_CODE_MAP.put(o,developer.getString(o.toString()));
            }
        } catch (Exception e) {
            System.out.println("配置文件读取失败");
            e.printStackTrace();
        }

    }
}
