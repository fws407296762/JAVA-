package com.sanqing.daoFactory;

import com.sanqing.dao.VoteDAO;
import com.sanqing.daoImpl.VoteDAOImpl;

public class VoteDAOFactory {
	public static VoteDAO getVoteDAOInstance(){	//������������������DAOʵ����ʵ��
		return new VoteDAOImpl();						//����DAOʵ����ʵ��
	}
}
