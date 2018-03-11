package com.sanqing.dao;

import java.util.List;

import com.sanqing.bean.Message;
import com.sanqing.util.Page;

public interface MessageDAO {
	public void addMessage(Message message);		//���������Ϣ�ķ���
	public void updateMessage(Message message);	//�����޸���Ϣ�ķ���
	public void deleteMessage(int messageID);		//����ɾ����Ϣ�ķ���
	public List<Message> findAllMessagee(Page page);		//���尴��ҳ��Ϣ��ѯ������Ϣ�ķ���
	public Message findMessageById(int messageID);	//���尴ID��ѯ��Ϣ�ķ���
	public int findAllCount();					//�����ѯ��Ϣ��¼��
}
