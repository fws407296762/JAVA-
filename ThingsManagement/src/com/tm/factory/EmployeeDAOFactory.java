package com.tm.factory;


import com.tm.dao.EmployeeDAO;
import com.tm.daoImpl.EmployeeDAOImpl;


public class EmployeeDAOFactory {
    public static EmployeeDAO getEmployeeDAOInstance(){
        return new EmployeeDAOImpl();
    }
}
