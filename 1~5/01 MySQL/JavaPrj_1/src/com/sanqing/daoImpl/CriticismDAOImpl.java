package com.sanqing.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.sanqing.bean.Criticism;
import com.sanqing.bean.Reply;
import com.sanqing.dao.CriticismDAO;
import com.sanqing.util.DBConnection;

public class CriticismDAOImpl implements CriticismDAO{
	public void addCriticism(Criticism criticism) {
		Connection conn = DBConnection.getConnection();	//������Ӷ���
		String addSQL = "insert into tb_criticism(criticismContent,employeeID,criticismTime,messageID) values(?,?,?,?)";
		PreparedStatement pstmt = null;					//����Ԥ�������
		try {
			pstmt = conn.prepareStatement(addSQL);		//���Ԥ������󲢸�ֵ
			pstmt.setString(1, criticism.getCriticismContent());	//���õ�һ������
			pstmt.setInt(2, criticism.getEmployeeID());//���õڶ�������
			pstmt.setTimestamp(3,new Timestamp(criticism.getCriticismTime().getTime()));//���õ���������
			pstmt.setInt(4, criticism.getMessageID());
			pstmt.executeUpdate();								//ִ�и���
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBConnection.close(pstmt);							//�ر�Ԥ�������
			DBConnection.close(conn);							//�ر����Ӷ���
		}
	}
	public Criticism findCriticismByMsgID(int messageID) {
		Connection conn = DBConnection.getConnection();	//������Ӷ���
		String findSQL = "select * from tb_criticism where messageID = ?";
		PreparedStatement pstmt = null;					//����Ԥ�������
		ResultSet rs = null;
		Criticism criticism= new Criticism();
		try {
			pstmt = conn.prepareStatement(findSQL);		//���Ԥ������󲢸�ֵ
			pstmt.setInt(1, messageID);
			rs = pstmt.executeQuery();				//ִ�в�ѯ
			if(rs.next()) {
				criticism.setCriticismID(rs.getInt(1));
				criticism.setCriticismContent(rs.getString(2));
				criticism.setEmployeeID(rs.getInt(3));
				criticism.setCriticismTime(rs.getTimestamp(4));
				criticism.setMessageID(rs.getInt(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBConnection.close(rs);								//�رս��������
			DBConnection.close(pstmt);							//�ر�Ԥ�������
			DBConnection.close(conn);							//�ر����Ӷ���
		}
		return criticism;
	}
}
