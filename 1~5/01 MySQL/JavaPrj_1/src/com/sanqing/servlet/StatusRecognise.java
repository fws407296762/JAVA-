package com.sanqing.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sanqing.bean.Employee;
import com.sanqing.dao.EmployeeDAO;
import com.sanqing.factory.EmployeeDAOFactory;

public class StatusRecognise extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServletContext servletContext = getServletContext();	//���ServletContex
		RequestDispatcher dispatcher = null;					
		String employeeID = request.getParameter("employeeID");	//����Ա����Ų���
		String password = request.getParameter("password");		//����ϵͳ�������
		if(employeeID == null || "".equals(employeeID)) {		//�ж��Ƿ�����Ա�����
			request.setAttribute("error", "������Ա�����!");
			dispatcher = servletContext.
					getRequestDispatcher("/statusRecognise.jsp");//������תҳ��
		}else {
			if(password == null || "".equals(password)) {		//�ж��Ƿ�����ϵͳ����
				request.setAttribute("error", "������ϵͳ����!");
				dispatcher = servletContext.
					getRequestDispatcher("/statusRecognise.jsp");//������תҳ��
			}else {
				EmployeeDAO employeeDAO = 
					EmployeeDAOFactory.getEmployeeDAOInstance();//���DAOʵ����ʵ��
				Employee employee = employeeDAO.
					findEmployeeById(Integer.parseInt(employeeID));//��ѯԱ��
				if(employee == null) {
					request.setAttribute("error", "��Ա����Ų�����!");
					dispatcher = servletContext.
						getRequestDispatcher("/statusRecognise.jsp");
				} else {
					if(password.equals(employee.getPassword())) {
						request.getSession().
							setAttribute("employee", employee);//��Ա����Ϣ���浽session��Χ
						response.sendRedirect("index.jsp");
						return;
					} else {
						request.setAttribute("error", "ϵͳ�����ȷ!");
						dispatcher = servletContext.
							getRequestDispatcher("/statusRecognise.jsp");
					}
				}
			}
		}
		dispatcher.forward(request, response);//������ת
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
