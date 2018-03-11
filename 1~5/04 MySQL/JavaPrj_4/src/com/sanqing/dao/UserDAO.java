package com.sanqing.dao;

import java.util.List;

import com.sanqing.po.User;

public interface UserDAO {
	//����û�
	public void add(User user);
	
	//ɾ���û�
	public void delete(User user);
	
	//�����û�
	public void update(User user);
	
	//��ѯ�����û�
	public List queryAll();
	
	//��id��ѯ�û�
	public User queryByID(String username);
}
