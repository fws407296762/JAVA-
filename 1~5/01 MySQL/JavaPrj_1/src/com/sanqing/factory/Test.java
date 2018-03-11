package com.sanqing.factory;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.sanqing.bean.Message;
import com.sanqing.dao.MessageDAO;

public class Test {
	public static void main(String[] args) throws ParseException {
		MessageDAO dao = MessageDAOFactory.getMessageAOInstance();
		Message message = new Message();
		message.setMessageTitle("今天要开会!");
		message.setMessageContent("今天要开会");
		message.setEmployeeID(3052);
		message.setPublishTime(new Date());
		
		dao.addMessage(message);
	}
}
