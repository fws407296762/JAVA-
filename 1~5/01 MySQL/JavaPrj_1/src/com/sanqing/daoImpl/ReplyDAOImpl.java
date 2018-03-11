package com.sanqing.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import sun.awt.RepaintArea;

import com.sanqing.bean.Message;
import com.sanqing.bean.Reply;
import com.sanqing.dao.ReplyDAO;
import com.sanqing.util.DBConnection;
import com.sanqing.util.Page;

public class ReplyDAOImpl implements ReplyDAO {
public void addReplay(Reply replay) {
	Connection conn = DBConnection.getConnection();		//������Ӷ���
	String addSQL = "insert into tb_reply(replyContent," +
			"employeeID,replyTime,messageID) values(?,?,?,?)";
	PreparedStatement pstmt = null;						//����Ԥ�������
	try {
		pstmt = conn.prepareStatement(addSQL);			//���Ԥ������󲢸�ֵ
		pstmt.setString(1, replay.getReplyContent());	//���ûظ�����
		pstmt.setInt(2, replay.getEmployeeID());		//���ûظ���
		pstmt.setTimestamp(3,new Timestamp(
				replay.getReplyTime().getTime()));		//���ûظ�ʱ��
		pstmt.setInt(4, replay.getMessageID());			//������Ϣ���
		pstmt.executeUpdate();								//ִ�и���
	} catch (SQLException e) {
		e.printStackTrace();
	} finally{
		DBConnection.close(pstmt);							//�ر�Ԥ�������
		DBConnection.close(conn);							//�ر����Ӷ���
	}
}

public int findCountByMsgID(int messageID) {
	Connection conn = DBConnection.getConnection();	//������Ӷ���
	String findSQL = "select count(*) from tb_reply where messageID = ?";
	PreparedStatement pstmt = null;					//����Ԥ�������
	ResultSet rs = null;
	int count = 0;
	try {
		pstmt = conn.prepareStatement(findSQL);		//���Ԥ������󲢸�ֵ
		pstmt.setInt(1, messageID);
		rs = pstmt.executeQuery();				//ִ�в�ѯ
		if(rs.next()) {
			count = rs.getInt(1);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally{
		DBConnection.close(rs);								//�رս��������
		DBConnection.close(pstmt);							//�ر�Ԥ�������
		DBConnection.close(conn);							//�ر����Ӷ���
	}
	return count;
}

	public List<Reply> findReplayByMsgID(int messageID, Page page) {
		Connection conn = DBConnection.getConnection();	//������Ӷ���
		String findSQL = "select * from tb_reply" +
								" where messageID = ? limit ?,?";
		PreparedStatement pstmt = null;					//����Ԥ�������
		ResultSet rs = null;
		List<Reply> replays = new ArrayList<Reply>();
		try {
			pstmt = conn.prepareStatement(findSQL);		//���Ԥ������󲢸�ֵ
			pstmt.setInt(1, messageID);
			pstmt.setInt(2, page.getBeginIndex());
			pstmt.setInt(3, page.getEveryPage());
			rs = pstmt.executeQuery();				//ִ�в�ѯ
			while(rs.next()) {
				Reply reply = new Reply();
				reply.setReplyID(rs.getInt(1));		//���ûظ����
				reply.setReplyContent(rs.getString(2));//���ûظ�����
				reply.setEmployeeID(rs.getInt(3));//����Ա�����
				reply.setReplyTime(rs.getTimestamp(4));//���ûظ�ʱ��
				reply.setMessageID(rs.getInt(5));//������Ϣ���
				replays.add(reply);//�����Ϣ�ظ�
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBConnection.close(rs);								//�رս��������
			DBConnection.close(pstmt);							//�ر�Ԥ�������
			DBConnection.close(conn);							//�ر����Ӷ���
		}
		return replays;
	}
}
