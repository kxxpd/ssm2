package com.zking.ssm.model;

public class Comments {
    private String id;

    private String messge;

    private String customername;

    private String productid;

    private Integer ztai;

    public Comments(String id, String messge, String customername, String productid, Integer ztai) {
        this.id = id;
        this.messge = messge;
        this.customername = customername;
        this.productid = productid;
        this.ztai = ztai;
    }

    public Comments() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMessge() {
        return messge;
    }

    public void setMessge(String messge) {
        this.messge = messge;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public Integer getZtai() {
        return ztai;
    }

    public void setZtai(Integer ztai) {
        this.ztai = ztai;
    }
}