package com.liangxunwang.unimanager.model;

/**
 * Created by Administrator on 2016/2/16.
 */
public class CityObj {
    private String id;
    private String cityID;
    private String city;
    private String father;
    private String citynum;
    private String msgNum;

    public String getMsgNum() {
        return msgNum;
    }

    public void setMsgNum(String msgNum) {
        this.msgNum = msgNum;
    }

    public String getCitynum() {
        return citynum;
    }

    public void setCitynum(String citynum) {
        this.citynum = citynum;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCityID() {
        return cityID;
    }

    public void setCityID(String cityID) {
        this.cityID = cityID;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getFather() {
        return father;
    }

    public void setFather(String father) {
        this.father = father;
    }
}
