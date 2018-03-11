package com.tm.util;

public class Page {
    private int everyPage;          //每页显示记录数
    private int totalCount;         //总记录数
    private int totalPage;          //总页数
    private int currentPage;        //当前页
    private int beginIndex;         //查询起始点
    private boolean hasPrePage;     //是否有上一页
    private boolean hasNextPage;    //是否有下一页
    public Page(int everyPage,int totalCount,int totalPage,int currentPage,int beginIndex,boolean hasPrePage,boolean hasNextPage){  //构造函数
        this.everyPage = everyPage;
        this.totalCount = totalCount;
        this.totalPage = totalPage;
        this.currentPage = currentPage;
        this.beginIndex = beginIndex;
        this.hasNextPage = hasNextPage;
        this.hasPrePage = hasPrePage;
    }
}
