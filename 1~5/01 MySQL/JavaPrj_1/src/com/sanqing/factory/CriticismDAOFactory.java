package com.sanqing.factory;

import com.sanqing.dao.CriticismDAO;
import com.sanqing.daoImpl.CriticismDAOImpl;

public class CriticismDAOFactory {
	public static CriticismDAO getCriticismDAOInstance(){	//������������������DAOʵ����ʵ��
		return new CriticismDAOImpl();						//����DAOʵ����ʵ��
	}
}
