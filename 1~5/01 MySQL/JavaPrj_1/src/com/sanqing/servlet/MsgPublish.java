package com.sanqing.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sanqing.bean.Employee;
import com.sanqing.bean.Message;
import com.sanqing.dao.EmployeeDAO;
import com.sanqing.dao.MessageDAO;
import com.sanqing.factory.EmployeeDAOFactory;
import com.sanqing.factory.MessageDAOFactory;

public class MsgPublish extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("gbk");		//���ò�������
		String title = request.getParameter("title");//����û�����ı���
		String content = request.getParameter("content");//����û�����ı���
		ServletContext servletContext = getServletContext();
		RequestDispatcher dispatcher = null;
		//���ĸ�Ա����������Ϣ
		Employee employee = (Employee) request.getSession().getAttribute("employee");
		if(employee == null) {
			request.setAttribute("error", "Ҫ������Ϣ�������Ƚ������ʶ��");
			dispatcher = servletContext.
					getRequestDispatcher("/publishNewMsg.jsp");//��ת����Ϣ����ҳ��
		}else {
			if(title == null || "".equals(title)) { //����û�û���������
				request.setAttribute("error", "����������Ϣ����");
				dispatcher = servletContext.
						getRequestDispatcher("/publishNewMsg.jsp");//��ת����Ϣ����ҳ��
			}else {
				Message message = new Message();//ʵ����Message����
				message.setEmployeeID(employee.getEmployeeID());//���÷����˱��
				message.setMessageTitle(title);//������Ϣ����
				message.setMessageContent(content);//���ñ�������
				message.setPublishTime(new Date());//���÷�������
				MessageDAO messageDAO = 
					MessageDAOFactory.getMessageAOInstance();//���MessageDAOʵ��
				messageDAO.addMessage(message);		//�����Ϣ
				dispatcher = servletContext.
				getRequestDispatcher("/GetMessageList");//��ת����Ϣ����ҳ��
			}
		}
		dispatcher.forward(request, response);//����ҳ����ת
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
