package com.zking.ssm.model;

public class Menu {
    private String id;

    private String foodtype;

    private String cuisine;

    private String orher;

    public Menu(String id, String foodtype, String cuisine, String orher) {
        this.id = id;
        this.foodtype = foodtype;
        this.cuisine = cuisine;
        this.orher = orher;
    }

    public Menu() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFoodtype() {
        return foodtype;
    }

    public void setFoodtype(String foodtype) {
        this.foodtype = foodtype;
    }

    public String getCuisine() {
        return cuisine;
    }

    public void setCuisine(String cuisine) {
        this.cuisine = cuisine;
    }

    public String getOrher() {
        return orher;
    }

    public void setOrher(String orher) {
        this.orher = orher;
    }
}