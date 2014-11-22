package com.al.core.component.impl;

/**
 * User: maorl
 * Date: 13-8-29
 * Time: 上午11:26
 */
public class BaseConstants {

    private final static String BASIC_IMAGE_KEY = "RGI_BASIC_IMAGE_KEY";
    private final static int DEFAULT_PAGE_SIZE = 10;



    public static int getDefaultPageSize() {
        return DEFAULT_PAGE_SIZE;
    }

    public static String getDefaultImageKey() {
        return  BASIC_IMAGE_KEY;
    }
}
