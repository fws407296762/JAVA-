package com.sanqing.dao;

import java.util.List;

import com.sanqing.bean.Criticism;
import com.sanqing.bean.Reply;
import com.sanqing.util.Page;

public interface CriticismDAO {
	public void addCriticism(Criticism criticism);			//�������
	public Criticism findCriticismByMsgID(int messageID);	//������ID��������
}
