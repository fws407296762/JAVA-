package com.tm.bean;

import java.util.Date;

public class Employee {
    private int employeeID;         //员工编号
    private String employeeName;    //员工姓名
    private boolean employeeSex;    //员工性别
    private Date employeBirth;      //员工生日
    private String employeePhone;   //办公室电话
    private String employeePlace;   //住址
    private Date joinTime;          //录入时间
    private String password;        //系统口令
    private boolean isLead;         //是否为管理层领导
    public void setEmployeeID(int employeeID){
        this.employeeID = employeeID;
    }
    public void setEmployeeName(String employeeName){
        this.employeeName = employeeName;
    }
    public void setEmployeeSex(boolean employeeSex){
        this.employeeSex = employeeSex;
    }
    public void setEmployeBirth(Date employeBirth){
        this.employeBirth = employeBirth;
    }
    public void setEmployeePhone(String employeePhone){
        this.employeePhone = employeePhone;
    }
    public void setEmployeePlace(String employeePlace){
        this.employeePlace = employeePlace;
    }
    public void setJoinTime(Date joinTime){
        this.joinTime = joinTime;
    }
    public void setPassword(String password){
        this.password = password;
    }
    public void setIsLead(boolean isLead){
        this.isLead = isLead;
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public Date getEmployeBirth() {
        return employeBirth;
    }

    public String getEmployeePhone() {
        return employeePhone;
    }

    public String getEmployeePlace() {
        return employeePlace;
    }

    public Date getJoinTime() {
        return joinTime;
    }
    public String getPassword(){
        return password;
    }

    public boolean isEmployeeSex() {
        return employeeSex;
    }

    public boolean isLead() {
        return isLead;
    }
}
