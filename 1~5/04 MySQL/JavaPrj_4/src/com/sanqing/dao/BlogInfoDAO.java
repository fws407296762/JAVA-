package com.sanqing.dao;

import com.sanqing.po.BlogInfo;

public interface BlogInfoDAO {
	//���ø��Ի�����
	public void save(BlogInfo info);
	//���
	public BlogInfo get(String username);
}
