package com.zking.ssm.vo;

public class PCommentsVo {
    private String id;
    private String messge;
    private String customerName;

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

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    @Override
    public String toString() {
        return "PCommentsVo{" +
                "id='" + id + '\'' +
                ", messge='" + messge + '\'' +
                ", customerName='" + customerName + '\'' +
                '}';
    }
}
