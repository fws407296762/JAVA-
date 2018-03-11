package com.sanqing.daoImpl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.sanqing.bean.Message;
import com.sanqing.dao.MessageDAO;
import com.sanqing.util.DBConnection;
import com.sanqing.util.Page;

public class MessageDAOImpl implements MessageDAO{

	public void addMessage(Message message) {
		Connection conn = DBConnection.getConnection();	//������Ӷ���
		String addSQL = "insert into tb_message(messageTitle,messageContent,employeeID,publishTime) values(?,?,?,?)";
		PreparedStatement pstmt = null;					//����Ԥ�������
		try {
			pstmt = conn.prepareStatement(addSQL);		//���Ԥ������󲢸�ֵ
			pstmt.setString(1, message.getMessageTitle());	//���õ�һ������
			pstmt.setString(2, message.getMessageContent());//���õڶ�������
			pstmt.setInt(3, message.getEmployeeID());			//���õ���������
			pstmt.setTimestamp(4, new Timestamp(message.getPublishTime().getTime()));
			pstmt.executeUpdate();								//ִ�и���
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBConnection.close(pstmt);							//�ر�Ԥ�������
			DBConnection.close(conn);							//�ر����Ӷ���
		}
	}

	public void deleteMessage(int messageID) {
		
	}

	public List<Message> findAllMessagee(Page page) {
		Connection conn = DBConnection.getConnection();	//������Ӷ���
		String findSQL = "select * from tb_message " +
					"order by  publishTime desc limit ?,?";
		PreparedStatement pstmt = null;					//����Ԥ�������
		ResultSet rs = null;
		List<Message> messages = new ArrayList<Message>();
		try {
			pstmt = conn.prepareStatement(findSQL);		//���Ԥ������󲢸�ֵ
			pstmt.setInt(1, page.getBeginIndex());		//��ѯ��ʼ��
			pstmt.setInt(2, page.getEveryPage());		//��ѯ��¼��
			rs = pstmt.executeQuery();				//ִ�в�ѯ
			while(rs.next()) {
				Message message = new Message();
				message.setMessageID(rs.getInt(1));	//������ϢID
				message.setMessageTitle(rs.getString(2));//������Ϣ����
				message.setMessageContent(
						rs.getString(3));			//������Ϣ����
				message.setEmployeeID(rs.getInt(4));//����Ա�����
				message.setPublishTime(rs.getTimestamp(5));//���÷���ʱ��
				messages.add(message);//�����Ϣ
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBConnection.close(rs);								//�رս��������
			DBConnection.close(pstmt);							//�ر�Ԥ�������
			DBConnection.close(conn);							//�ر����Ӷ���
		}
		return messages;
	}

	public Message findMessageById(int messageID) {
		Connection conn = DBConnection.getConnection();	//������Ӷ���
		String querySQL  = "select * from tb_message where messageID = ?";
		PreparedStatement pstmt = null;					//����Ԥ�������
		ResultSet rs = null;
		Message message = null;
		try {
			pstmt = conn.prepareStatement(querySQL);		//���Ԥ������󲢸�ֵ
			pstmt.setInt(1, messageID);
			rs = pstmt.executeQuery();					//ִ�в�ѯ
			if(rs.next()) {
				message = new Message();
				message.setMessageID(rs.getInt(1));	//������ϢID
				message.setMessageTitle(rs.getString(2));//������Ϣ����
				message.setMessageContent(
						rs.getString(3));			//������Ϣ����
				message.setEmployeeID(rs.getInt(4));//����Ա�����
				message.setPublishTime(rs.getTimestamp(5));//���÷���ʱ��
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBConnection.close(rs);								//�رս��������
			DBConnection.close(pstmt);							//�ر�Ԥ�������
			DBConnection.close(conn);							//�ر����Ӷ���
		}
		return message;
	}

	public void updateMessage(Message message) {
		
	}

	public int findAllCount() {
		Connection conn = DBConnection.getConnection();	//������Ӷ���
		String findSQL = "select count(*) from tb_message";
		PreparedStatement pstmt = null;					//����Ԥ�������
		ResultSet rs = null;
		int count = 0;
		try {
			pstmt = conn.prepareStatement(findSQL);		//���Ԥ������󲢸�ֵ
			rs = pstmt.executeQuery();					//ִ�в�ѯ
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBConnection.close(rs);						//�رս��������
			DBConnection.close(pstmt);					//�ر�Ԥ�������
			DBConnection.close(conn);					//�ر����Ӷ���
		}
		return count;
	}
}
