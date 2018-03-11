package com.tm.daoImpl;

import com.tm.bean.Employee;
import com.tm.dao.EmployeeDAO;
import com.tm.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class EmployeeDAOImpl implements EmployeeDAO{
    public void addEmployee(Employee employee){

    }
    public void deteleEmployee(int employeeID){

    }
    public void updateEmployee(Employee employee){

    }
    public List<Employee> findAllEmployee(){
        return null;
    }

    public Employee findEmployeeById(int employeeID){
        Connection conn = DBConnection.getConnection();
        String findByIDSQL = "select * from tb_employee where employeeID=?";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Employee employee = null;
        try{
            pstmt = conn.prepareStatement(findByIDSQL);
            pstmt.setInt(1,employeeID);
            rs = pstmt.executeQuery();
            if(rs.next()){
                employee = new Employee();
                employee.setEmployeeID(rs.getInt(1));
                employee.setEmployeeName(rs.getString(2));
                employee.setEmployeeSex(rs.getBoolean(3));
                employee.setEmployeBirth(rs.getDate(4));
                employee.setEmployeePhone(rs.getString(5));
                employee.setEmployeePlace(rs.getString(6));
                employee.setJoinTime(rs.getDate(7));
                employee.setPassword(rs.getString(8));
                employee.setIsLead(rs.getBoolean(9));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally {
            DBConnection.close(rs);
            DBConnection.close(pstmt);
            DBConnection.close(conn);
        }
        return employee;
    }
}
