package com.sanqing.bean;
/**
 * 
 * ͶƱ��
 *
 */
public class Vote {
	private int voteID;		//ͶƱID
	private String voteName;	//ͶƱ����
	private int channelID;	//Ƶ��ID
	public int getVoteID() {
		return voteID;
	}
	public void setVoteID(int voteID) {
		this.voteID = voteID;
	}
	public String getVoteName() {
		return voteName;
	}
	public void setVoteName(String voteName) {
		this.voteName = voteName;
	}
	public int getChannelID() {
		return channelID;
	}
	public void setChannelID(int channelID) {
		this.channelID = channelID;
	}
}
