package com.zking.ssm.vo;

import java.util.Date;

public class PRoomOrderInfo {
    private String name;
    private String roomnum;
    private String phone;
    private float price;
    private Date submitTime;
    private Integer ztai;

    public Integer getZtai() {
        return ztai;
    }

    public void setZtai(Integer ztai) {
        this.ztai = ztai;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRoomnum() {
        return roomnum;
    }

    public void setRoomnum(String roomnum) {
        this.roomnum = roomnum;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public Date getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

    @Override
    public String toString() {
        return "PRoomOrderInfo{" +
                "name='" + name + '\'' +
                ", roomnum='" + roomnum + '\'' +
                ", phone='" + phone + '\'' +
                ", price=" + price +
                ", submitTime=" + submitTime +
                '}';
    }
}
