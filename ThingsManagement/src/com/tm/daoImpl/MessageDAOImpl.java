package com.tm.daoImpl;

import com.tm.bean.Message;
import com.tm.dao.MessageDAO;
import com.tm.util.DBConnection;
import com.tm.util.Page;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MessageDAOImpl implements MessageDAO {
    public void addMessage(Message message){
        Connection conn = DBConnection.getConnection();
        String addSQL = "insert into tb_message(messageTitle,messageContent,employeeID,publishTime) values(?,?,?,?)";
        PreparedStatement pstmt = null;
        try{
            pstmt = conn.prepareStatement(addSQL);
            pstmt.setString(1,message.getMessageTitle());
            pstmt.setString(2,message.getMessageContent());
            pstmt.setInt(3,message.getMessageID());
            pstmt.setTimestamp(4,new Timestamp(message.getPublishTime().getTime()));
            pstmt.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DBConnection.close(pstmt);
            DBConnection.close(conn);
        }
    }
    public void updateMessage(Message message){

    }
    public void deleteMessage(int messageID){

    }
    public List<Message> findAllMessage(Page page){
        Connection conn = DBConnection.getConnection();
        String findSQL = "select * from tb_message order by publishTime desc limit ?,?";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Message> messages = new ArrayList<Message>();
        try{
            pstmt = conn.prepareStatement(findSQL);
            pstmt.setInt(1,page.getBeginIndex());
            pstmt.setInt(2,page.getEveryPage());
            rs = pstmt.executeQuery();
            while (rs.next()){
                Message message = new Message();
                message.setMessageID(rs.getInt(1));
                message.setMessageTitle(rs.getString(2));
                message.setMessageContent(rs.getString(3));
                message.setEmployeeID(rs.getInt(4));
                message.setPublishTime(rs.getTimestamp(5));
                messages.add(message);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            DBConnection.close(pstmt);
            DBConnection.close(rs);
            DBConnection.close(conn);
        }
        return messages;
    }
    public Message findMessageById(int messageID){
        Connection conn = DBConnection.getConnection();
        String querySQL = "select * from tb_message where messageID=?";
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Message message = null;
        try{
            pstmt = conn.prepareStatement(querySQL);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
    public int findAllCount(){
        return 0;
    }
}
