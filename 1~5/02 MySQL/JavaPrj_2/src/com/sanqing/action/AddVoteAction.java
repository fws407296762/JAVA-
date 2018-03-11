package com.sanqing.action;

import java.util.UUID;

import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.bean.Vote;
import com.sanqing.bean.VoteOption;
import com.sanqing.dao.VoteDAO;
import com.sanqing.dao.VoteOptionDAO;
import com.sanqing.daoFactory.VoteDAOFactory;
import com.sanqing.daoFactory.VoteOptionDAOFactory;

public class AddVoteAction extends ActionSupport {
	private int channel;		// ��װchannel����
	private String voteName;	// ��װvoteName����
	private String[] voteOption;// ��װvoteOption����

	public int getChannel() {
		return channel;
	}

	public void setChannel(int channel) {
		this.channel = channel;
	}

	public String getVoteName() {
		return voteName;
	}

	public void setVoteName(String voteName) {
		this.voteName = voteName;
	}

	public String[] getVoteOption() {
		return voteOption;
	}

	public void setVoteOption(String[] voteOption) {
		this.voteOption = voteOption;
	}

	public String execute() throws Exception {
		VoteDAO voteDAO = VoteDAOFactory.getVoteDAOInstance();//���VoteDAOʵ��
		VoteOptionDAO voteOptionDAO = 
			VoteOptionDAOFactory.getVoteOptionDAOInstance();//���voteOptionʵ��
		//���ȱ���ͶƱ��Ȼ���ٱ���ͶƱѡ��
		Vote vote = new Vote();
		vote.setChannelID(channel);
		vote.setVoteName(voteName);
		voteDAO.addVote(vote);
		//��ѯͶƱID
		int voteID = voteDAO.findVoteByName(voteName).getVoteID();
		//����ͶƱѡ��
		for(String voteOptionName : voteOption) {
			VoteOption vp = new VoteOption();
			vp.setVoteID(voteID);
			vp.setVoteOptionName(voteOptionName);
			voteOptionDAO.addVoteOption(vp);
		}
		return this.SUCCESS;
	}

}
