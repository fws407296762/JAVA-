package com.sanqing.dao;

import java.util.List;

import com.sanqing.bean.VoteOption;

public interface VoteOptionDAO {
	public void addVoteOption(VoteOption voteOption);		//���ͶƱѡ��
	public void updateVoteOption(VoteOption voteOption);	//����ͶƱѡ��
	public void deleteVoteOption(int voteOptionID);			//ɾ��ͶƱѡ��
	public List<VoteOption> findVoteOptionByVoteID(int voteID);			//��ѯ����ͶƱѡ��
	public VoteOption findVoteOptionById(int voteOptionID);	//ͨ��ID��ѯͶƱѡ��
}
