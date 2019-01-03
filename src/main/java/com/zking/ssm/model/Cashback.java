package com.zking.ssm.model;

public class Cashback {
    private String id;

    private String type;

    private Float discount;

    private String foodid;

    public Cashback(String id, String type, Float discount, String foodid) {
        this.id = id;
        this.type = type;
        this.discount = discount;
        this.foodid = foodid;
    }

    public Cashback() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Float getDiscount() {
        return discount;
    }

    public void setDiscount(Float discount) {
        this.discount = discount;
    }

    public String getFoodid() {
        return foodid;
    }

    public void setFoodid(String foodid) {
        this.foodid = foodid;
    }
}