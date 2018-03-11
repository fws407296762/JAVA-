package com.tm.dao;

import com.tm.bean.Employee;
import java.util.List;

public interface EmployeeDAO {
    public void addEmployee(Employee employee);         //定义添加员工信息的方法
    public void updateEmployee(Employee employee);      //定义修改员工信息的方法
    public void deteleEmployee(int employeeID);         //定义删除员工信息的方法
    public List<Employee> findAllEmployee();            //定义查询所有员工信息的方法
    public Employee findEmployeeById(int employeeID);   //按ID查询员工信息
}
