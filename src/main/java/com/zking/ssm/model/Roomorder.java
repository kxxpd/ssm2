package com.zking.ssm.model;

import java.math.BigDecimal;
import java.util.Date;

public class Roomorder {
    private String id;

    private String name;

    private String roomnum;

    private String phone;

    private BigDecimal price;

    private Date submittime;

    private Integer ztai;

    private Integer iscomments;

    public Roomorder(String id, String name, String roomnum, String phone, BigDecimal price, Date submittime, Integer ztai, Integer iscomments) {
        this.id = id;
        this.name = name;
        this.roomnum = roomnum;
        this.phone = phone;
        this.price = price;
        this.submittime = submittime;
        this.ztai = ztai;
        this.iscomments = iscomments;
    }

    public Integer getIscomments() {
        return iscomments;
    }

    public void setIscomments(Integer iscomments) {
        this.iscomments = iscomments;
    }

    public Roomorder() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Date getSubmittime() {
        return submittime;
    }

    public void setSubmittime(Date submittime) {
        this.submittime = submittime;
    }

    public Integer getZtai() {
        return ztai;
    }

    public void setZtai(Integer ztai) {
        this.ztai = ztai;
    }
}