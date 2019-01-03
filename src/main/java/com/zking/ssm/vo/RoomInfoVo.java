package com.zking.ssm.vo;

public class RoomInfoVo {

    private String id;
    private String roomname;
    private String roomtype;
    private String price;
    private String imagename;
    private String remark;
    private String area;
    private Integer count;
    private Integer commentsId;

    public Integer getCommentsId() {
        return commentsId;
    }

    public void setCommentsId(Integer commentsId) {
        this.commentsId = commentsId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoomname() {
        return roomname;
    }

    public void setRoomname(String roomname) {
        this.roomname = roomname;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImagename() {
        return imagename;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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

    @Override
    public String toString() {
        return "RoomInfoVo{" +
                "id='" + id + '\'' +
                ", roomname='" + roomname + '\'' +
                ", roomtype='" + roomtype + '\'' +
                ", price='" + price + '\'' +
                ", imagename='" + imagename + '\'' +
                ", remark='" + remark + '\'' +
                ", area='" + area + '\'' +
                ", count=" + count +
                '}';
    }
}
