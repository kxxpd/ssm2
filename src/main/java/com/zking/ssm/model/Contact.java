package com.zking.ssm.model;

public class Contact {
    private String id;

    private String username;

    private String phone;

    private String message;

    private Integer ztai;

    public Contact(String id, String username, String phone, String message, Integer ztai) {
        this.id = id;
        this.username = username;
        this.phone = phone;
        this.message = message;
        this.ztai = ztai;
    }

    public Contact() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getZtai() {
        return ztai;
    }

    public void setZtai(Integer ztai) {
        this.ztai = ztai;
    }
}