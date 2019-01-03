package com.zking.ssm.model;

import java.util.Date;

public class Foodorder {
    private String id;

    private String foodname;

    private String customername;

    private String roomnum;

    private Float total;

    private Date submittime;

    public Foodorder(String id, String foodname, String customername, String roomnum, Float total, Date submittime) {
        this.id = id;
        this.foodname = foodname;
        this.customername = customername;
        this.roomnum = roomnum;
        this.total = total;
        this.submittime = submittime;
    }

    public Foodorder() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getRoomnum() {
        return roomnum;
    }

    public void setRoomnum(String roomnum) {
        this.roomnum = roomnum;
    }

    public Float getTotal() {
        return total;
    }

    public void setTotal(Float total) {
        this.total = total;
    }

    public Date getSubmittime() {
        return submittime;
    }

    public void setSubmittime(Date submittime) {
        this.submittime = submittime;
    }
}