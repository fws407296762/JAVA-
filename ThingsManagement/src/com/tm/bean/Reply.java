package com.tm.bean;

import java.util.Date;

public class Reply {
    private int replyID;            //回复id
    private String repluContent;    //回复内容
    private int employeeID;         //回复人ID
    private Date replayTime;        //回复时间
    private int messageID;          //消息ID

    public int getReplyID() {
        return replyID;
    }

    public void setReplyID(int replyID) {
        this.replyID = replyID;
    }

    public String getRepluContent() {
        return repluContent;
    }

    public void setRepluContent(String repluContent) {
        this.repluContent = repluContent;
    }

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public Date getReplayTime() {
        return replayTime;
    }

    public void setReplayTime(Date replayTime) {
        this.replayTime = replayTime;
    }

    public int getMessageID() {
        return messageID;
    }

    public void setMessageID(int messageID) {
        this.messageID = messageID;
    }
}
