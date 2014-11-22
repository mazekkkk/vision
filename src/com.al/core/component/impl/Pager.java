package com.al.core.component.impl;

import java.util.List;

/**
 * User: maorl
 * Date: 13-8-29
 * Time: 上午10:08
 */
public class Pager<T> {

    private int pageSize;
    private int pageNumber;
    private int rowCount;
    private int pageCount;
    private List<T> currentPageList;

    public Pager() {

    }

    public Pager(int pageSize, int pageNumber,int rowCount, List<T> currentPageList) {
        this.pageSize = pageSize;
        this.pageNumber = pageNumber;
        this.rowCount = rowCount;
        this.currentPageList = currentPageList;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getRowCount() {
        return rowCount;
    }

    public void setRowCount(int rowCount) {
        this.rowCount = rowCount;
    }

    public int getPageCount() {
        int pc = rowCount/pageSize;
        if(rowCount % pageSize >0) {
            pc++;
        }
        return pc;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public List<T> getCurrentPageList() {
        return currentPageList;
    }

    public void setCurrentPageList(List<T> currentPageList) {
        this.currentPageList = currentPageList;
    }
}
