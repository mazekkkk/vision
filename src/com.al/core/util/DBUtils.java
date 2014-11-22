package com.al.core.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * User: maorl
 * Date: 13-8-29
 * Time: 上午10:11
 */
public class DBUtils {

    /**
     * 去除hql的select 子句，未考虑union的情况,用于pagedQuery.
     *
     * @param hql Hibernate Query Language
     * @return 去掉from之前的hql
     */

    public static String removeSelect(String hql) {
        int beginPos = hql.toLowerCase().indexOf("from");
        return hql.substring(beginPos);
    }

    /**
     * 去除hql的orderby 子句，用于pagedQuery.
     *
     * @param hql Hibernate Query Language
     * @return 去掉order by之后（包括order by）的hql
     */
    public static String removeOrders(String hql) {
        Pattern p = Pattern.compile("order\\s*by[\\w|\\W|\\s|\\S]*", Pattern.CASE_INSENSITIVE);
        Matcher m = p.matcher(hql);
        StringBuffer sb = new StringBuffer();
        while (m.find()) {
            m.appendReplacement(sb, "");
        }
        m.appendTail(sb);
        return sb.toString();
    }
}
