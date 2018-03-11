package com.sanqing.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.bean.VoteOption;
import com.sanqing.dao.VoteDAO;
import com.sanqing.dao.VoteOptionDAO;
import com.sanqing.daoFactory.VoteDAOFactory;
import com.sanqing.daoFactory.VoteOptionDAOFactory;

public class DeleteVoteAction extends ActionSupport{
	private int voteID;

	public int getVoteID() {
		return voteID;
	}

	public void setVoteID(int voteID) {
		this.voteID = voteID;
	}

	public String execute() throws Exception {
		VoteDAO voteDAO = VoteDAOFactory.getVoteDAOInstance();
		VoteOptionDAO voteOptionDAO = VoteOptionDAOFactory
				.getVoteOptionDAOInstance();
		//ͨ����ͶƱID���Ҹ�ͶƱ�µ�����ͶƱѡ��
		List<VoteOption> voteOptions = voteOptionDAO.findVoteOptionByVoteID(voteID);
		//ѭ������ɾ��
		for(VoteOption voteOption : voteOptions) {
			voteOptionDAO.deleteVoteOption(voteOption.getVoteOptionID());
		}
		//��ɾ����ͶƱ
		voteDAO.deleteVote(voteID);
		return this.SUCCESS;
	}
}
