package com.sanqing.action;

import java.util.List;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

import com.opensymphony.xwork2.ActionSupport;
import com.sanqing.bean.Vote;
import com.sanqing.bean.VoteOption;
import com.sanqing.dao.VoteDAO;
import com.sanqing.dao.VoteOptionDAO;
import com.sanqing.daoFactory.VoteDAOFactory;
import com.sanqing.daoFactory.VoteOptionDAOFactory;

public class VoteResultAction extends ActionSupport {
	private JFreeChart chart;
	private int voteID;//ͶƱID
	
	public int getVoteID() {
		return voteID;
	}

	public void setVoteID(int voteID) {
		this.voteID = voteID;
	}

	public JFreeChart getChart() {
		VoteDAO voteDAO = VoteDAOFactory.getVoteDAOInstance();//���VoteDAOʵ��
		VoteOptionDAO voteOptionDAO = 
			VoteOptionDAOFactory.getVoteOptionDAOInstance();//���voteOptionʵ��
		//����ͶƱID�õ���ͶƱ
		Vote vote = voteDAO.findVoteById(voteID);
		String voteName = vote.getVoteName();	//�õ�ͶƱ����
		
		//����ͶƱID�õ����е�ͶƱѡ��
		List<VoteOption> voteOptions = voteOptionDAO.findVoteOptionByVoteID(voteID);
		
		DefaultCategoryDataset dcd = new DefaultCategoryDataset();//����Դ
		
		//��������
		for(VoteOption voteOption : voteOptions) {
			dcd.setValue(voteOption.getTicketNum(),"",voteOption.getVoteOptionName());
		}
		//ʹ�ù����ഴ����״ͼ
		JFreeChart chart = ChartFactory.createBarChart3D(
				voteName,
				"ͶƱѡ��",
				"ͶƱ��", 
				dcd,
				PlotOrientation.VERTICAL ,
				false, 
				true,
				false);
		
		return chart;
	}

	public void setChart(JFreeChart chart) {
		this.chart = chart;
	}
	
	public String execute() throws Exception {
		return SUCCESS;
	}
}
