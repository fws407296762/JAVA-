package com.sanqing.dao;

import java.util.List;

import com.sanqing.bean.Criticism;
import com.sanqing.bean.Reply;
import com.sanqing.util.Page;

public interface CriticismDAO {
	public void addCriticism(Criticism criticism);			//添加批复
	public Criticism findCriticismByMsgID(int messageID);	//按文章ID查找批复
}
