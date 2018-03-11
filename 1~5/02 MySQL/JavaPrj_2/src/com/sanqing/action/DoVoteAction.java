package com.sanqing.action;

import javax.servlet.http.Cookie;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.bean.VoteOption;
import com.sanqing.dao.VoteOptionDAO;
import com.sanqing.daoFactory.VoteOptionDAOFactory;

public class DoVoteAction extends ActionSupport{
	private int voteOptionID;
	private String otherOption;
	private int voteID;
	private int channelID;

	public int getChannelID() {
		return channelID;
	}
	public void setChannelID(int channelID) {
		this.channelID = channelID;
	}
	public int getVoteID() {
		return voteID;
	}

	public void setVoteID(int voteID) {
		this.voteID = voteID;
	}

	public int getVoteOptionID() {
		return voteOptionID;
	}

	public void setVoteOptionID(int voteOptionID) {
		this.voteOptionID = voteOptionID;
	}

	public String getOtherOption() {
		return otherOption;
	}

	public void setOtherOption(String otherOption) {
		this.otherOption = otherOption;
	}

	public String execute() throws Exception {
		VoteOptionDAO voteOptionDAO = VoteOptionDAOFactory
		.getVoteOptionDAOInstance();
		//�����ж��û��Ƿ��ܽ���ͶƱ
		Cookie cookies[]= ServletActionContext.getRequest().getCookies();//ȡ��cookies
		
		for(Cookie cookie : cookies) {//����cookies
			
			if(cookie.getValue().equals(Integer.toString(voteID))) {//����û��Ѿ�Ͷ��Ʊ
				this.addActionError("�������Ѿ�Ͷ��Ʊ�ˣ�������������");
				return this.INPUT;
			}
		}
		//�ж��Ƿ�ѡ������ѡ��
		if(voteOptionID == 0) {
			//��Ӹ�ѡ��
			VoteOption voteOption = new VoteOption();
			voteOption.setVoteID(voteID);
			voteOption.setVoteOptionName(otherOption);
			voteOption.setTicketNum(1);
			voteOptionDAO.addVoteOption(voteOption);
		}else {
			//ȡ����ǰ��ͶƱѡ��
			VoteOption voteOption = voteOptionDAO.findVoteOptionById(voteOptionID);
			int ticketNum = voteOption.getTicketNum();
			//����ѡ���ͶƱ��
			voteOption.setTicketNum(ticketNum + 1);
			voteOptionDAO.updateVoteOption(voteOption);
			//������ɺ����cookie����ֹ�ظ�ͶƱ
			Cookie cookie = new Cookie("hasVote" + voteID,Integer.toString(voteID));
			ServletActionContext.getResponse().addCookie(cookie);
		}
		return this.SUCCESS;
	}
	
}
