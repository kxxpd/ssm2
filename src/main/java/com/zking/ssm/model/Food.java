package com.zking.ssm.model;

import java.math.BigDecimal;

public class Food {
    private String id;

    private String typeid;

    private String foodname;

    private BigDecimal price;

    private String remark;

    private Integer imageid;

    private Integer ztai;

    private String commentsId;

    public Food(String id, String typeid, String foodname, BigDecimal price, String remark, Integer imageid, Integer ztai, String commentsId) {
        this.id = id;
        this.typeid = typeid;
        this.foodname = foodname;
        this.price = price;
        this.remark = remark;
        this.imageid = imageid;
        this.ztai = ztai;
        this.commentsId = commentsId;
    }

    public Food() {
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

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getImageid() {
        return imageid;
    }

    public void setImageid(Integer imageid) {
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
}