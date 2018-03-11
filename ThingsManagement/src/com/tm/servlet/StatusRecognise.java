package com.tm.servlet;

import com.tm.bean.Employee;
import com.tm.dao.EmployeeDAO;
import com.tm.factory.EmployeeDAOFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import java.io.IOException;

public class StatusRecognise extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        ServletContext servletContext = getServletContext();  //获得 ServletContext
        RequestDispatcher dispatcher = null;
        String employeeID = request.getParameter("employeeID");  //接受员工编号参数
        String password = request.getParameter("password");     //接受系统口令参数
        if(employeeID == null || "".equals(employeeID)){
            request.setAttribute("error","请输入员工编号！");
            dispatcher = servletContext.getRequestDispatcher("/statusRecognise.jsp"); //设置跳转界面
        }else{
            if(password == null || "".equals(password)){    //判断是否输入系统口令
                request.setAttribute("error","请输入系统口令");
                dispatcher = servletContext.getRequestDispatcher("/statusRecognise.jsp");
            }else{
                EmployeeDAO employeeDAO = EmployeeDAOFactory.getEmployeeDAOInstance();
                Employee employee = employeeDAO.findEmployeeById(Integer.parseInt(employeeID));  //查询员工
                if(employee == null){
                    request.setAttribute("error","该员工编号不存在！");
                    dispatcher = servletContext.getRequestDispatcher("/statusRecognise.jsp");
                }else{
                    if(password.equals(employee.getPassword())){
                        request.getSession().setAttribute("employee",employee);
                        response.sendRedirect("index.jsp");
                        return;
                    }else{
                        request.setAttribute("error","系统口令不正确");
                        dispatcher = servletContext.getRequestDispatcher("/statusRecognise.jsp");
                    }
                }
            }
        }
        dispatcher.forward(request,response);
    }
}
