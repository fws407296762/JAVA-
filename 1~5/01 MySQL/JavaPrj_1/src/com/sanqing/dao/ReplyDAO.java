package com.sanqing.dao;

import java.util.List;

import com.sanqing.bean.Message;
import com.sanqing.bean.Reply;
import com.sanqing.util.Page;

public interface ReplyDAO {
	public void addReplay(Reply replay);			//��ӻظ�
	public List<Reply> findReplayByMsgID(int messageID,Page page);//������ID���һظ�
	public int findCountByMsgID(int messageID);//��ѯ��Ϣ�ظ���¼��
}
