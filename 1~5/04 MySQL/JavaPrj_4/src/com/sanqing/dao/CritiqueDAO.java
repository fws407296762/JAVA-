package com.sanqing.dao;

import java.util.List;

import com.sanqing.fenye.Page;
import com.sanqing.po.Critique;

public interface CritiqueDAO {
	//�������
	public void addCritique(Critique critique);
	
	//���ָ�����µ�������
	public int queryCritiqueCount(int AId);
	
	//����Page����ѯָ�����µ�����
	public List<Critique> queryByPage(int AId,Page page);
}
