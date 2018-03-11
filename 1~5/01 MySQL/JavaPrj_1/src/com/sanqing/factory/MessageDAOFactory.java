package com.sanqing.factory;

import com.sanqing.dao.MessageDAO;
import com.sanqing.daoImpl.MessageDAOImpl;

public class MessageDAOFactory {
	public static MessageDAO getMessageAOInstance(){	//������������������DAOʵ����ʵ��
		return new MessageDAOImpl();						//����DAOʵ����ʵ��
	}
}
