package com.sanqing.service;

import com.sanqing.fenye.Page;
import com.sanqing.fenye.Result;
import com.sanqing.po.Critique;

public interface CritiqueService {
	//�������
	public void addCritique(Critique critique);
	
	//��ҳ��ʾ����
	public Result showCritiqueByPage(int AId,Page page);
	
	//���ָ�����µ�������
	public int getCritiqueCount(int AId);
}
