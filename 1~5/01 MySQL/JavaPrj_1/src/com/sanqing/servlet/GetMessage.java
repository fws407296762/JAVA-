package com.sanqing.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sanqing.bean.Criticism;
import com.sanqing.bean.Message;
import com.sanqing.bean.Reply;
import com.sanqing.dao.CriticismDAO;
import com.sanqing.dao.MessageDAO;
import com.sanqing.dao.ReplyDAO;
import com.sanqing.factory.CriticismDAOFactory;
import com.sanqing.factory.MessageDAOFactory;
import com.sanqing.factory.ReplyDAOFactory;
import com.sanqing.util.Page;
import com.sanqing.util.PageUtil;

public class GetMessage extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int messageID = Integer.
			parseInt(request.getParameter("messageID"));//ȡ����Ϣ���
		MessageDAO messageDAO
			= MessageDAOFactory.getMessageAOInstance();//���MessageDAOʵ��
		Message message = 
			messageDAO.findMessageById(messageID);//��ѯ�ñ�Ŷ�Ӧ����Ϣ
		request.setAttribute("message", message); //����Ϣ������request��Χ
		
		//��ø���Ϣ��Ӧ�����лظ�
		int currentPage = 0;
		String currentPageStr = request.
					getParameter("currentPage");//�����Ϣ�ظ��б�ĵ�ǰҳ��Ϣ
		if(currentPageStr == null || "".equals(currentPageStr)){
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		ReplyDAO replayDAO = ReplyDAOFactory.getReplyDAOInstance();
		Page page = PageUtil.createPage(5, replayDAO.
						findCountByMsgID(messageID), currentPage);//���÷�ҳ��Ϣ
		List<Reply> replys = replayDAO.
						findReplayByMsgID(messageID, page);//��ҳ��ѯ��Ϣ�ظ�
		request.setAttribute("replyList", replys);//������Ϣ�ظ��б�
		request.setAttribute("page", page);//�����ҳ��Ϣ
		
		//��ø���Ϣ���������
		CriticismDAO criticismDAO = CriticismDAOFactory.getCriticismDAOInstance();
		Criticism criticism = criticismDAO.findCriticismByMsgID(messageID);
		request.setAttribute("criticism", criticism);
		
		ServletContext servletContext = getServletContext();
		RequestDispatcher dispatcher = servletContext.
					getRequestDispatcher("/showMsg.jsp");	//��ת����Ϣ��ʾҳ
		dispatcher.forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
