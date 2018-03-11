package com.sanqing.factory;

import com.sanqing.dao.MessageDAO;
import com.sanqing.dao.ReplyDAO;
import com.sanqing.daoImpl.MessageDAOImpl;
import com.sanqing.daoImpl.ReplyDAOImpl;

public class ReplyDAOFactory {
	public static ReplyDAO getReplyDAOInstance(){	//������������������DAOʵ����ʵ��
		return new ReplyDAOImpl();						//����DAOʵ����ʵ��
	}
}
