package com.zking.ssm.model;

import java.math.BigDecimal;

public class Room {
    private String id;

    private String typeid;

    private String roomname;

    private String roomnum;

    private BigDecimal price;

    private String area;

    private Integer count;

    private String remark;

    private String imageid;

    private Integer ztai;

    private String commentsId;

    public Room(String id, String typeid, String roomname,String roomnum, BigDecimal price, String area, Integer count, String remark, String imageid, Integer ztai, String commentsId) {
        this.id = id;
        this.typeid = typeid;
        this.roomname = roomname;
        this.roomnum = roomnum;
        this.price = price;
        this.area = area;
        this.count = count;
        this.remark = remark;
        this.imageid = imageid;
        this.ztai = ztai;
        this.commentsId = commentsId;
    }

    public Room() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTypeid() {
        return typeid;
    }

    public void setTypeid(String typeid) {
        this.typeid = typeid;
    }

    public String getRoomname() {
        return roomname;
    }

    public void setRoomname(String roomname) {
        this.roomname = roomname;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getImageid() {
        return imageid;
    }

    public void setImageid(String imageid) {
        this.imageid = imageid;
    }

    public Integer getZtai() {
        return ztai;
    }

    public void setZtai(Integer ztai) {
        this.ztai = ztai;
    }

    public String getCommentsId() {
        return commentsId;
    }

    public void setCommentsId(String commentsId) {
        this.commentsId = commentsId;
    }

    public String getRoomnum() {
        return roomnum;
    }

    public void setRoomnum(String roomnum) {
        this.roomnum = roomnum;
    }

    @Override
    public String toString() {
        return "Room{" +
                "id='" + id + '\'' +
                ", typeid='" + typeid + '\'' +
                ", roomname='" + roomname + '\'' +
                ", price=" + price +
                ", area='" + area + '\'' +
                ", count=" + count +
                ", remark='" + remark + '\'' +
                ", imageid='" + imageid + '\'' +
                ", ztai=" + ztai +
                ", commentsId='" + commentsId + '\'' +
                '}';
    }
}