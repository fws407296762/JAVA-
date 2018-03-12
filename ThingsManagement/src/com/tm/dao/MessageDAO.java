package com.tm.dao;

import com.tm.bean.Message;
import com.tm.util.Page;

import java.util.List;

public interface MessageDAO {
    public void addMessage(Message message);        //定义添加消息的方法
    public void updateMessage(Message message);     //定义更新消息的方法
    public void deleteMessage(int messageID);       //定义删除消息的方法
    public List<Message> findAllMessage(Page page); //定义按分页查询消息的方法
    public Message findMessageById(int messageID);  //定义按ID查询消息的方法
    public int findAllCount();                      //定义查询消息记录数
}
