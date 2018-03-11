package com.sanqing.daoFactory;

import com.sanqing.dao.VoteOptionDAO;
import com.sanqing.daoImpl.VoteOptionDAOImpl;

public class VoteOptionDAOFactory {
	public static VoteOptionDAO getVoteOptionDAOInstance(){	//������������������DAOʵ����ʵ��
		return new VoteOptionDAOImpl();						//����DAOʵ����ʵ��
	}
}
