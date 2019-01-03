package com.zking.ssm.model;

import org.springframework.stereotype.Component;

@Component
public class Customer {
    private String id;

    private String customername;

    private String password;

    private String phone;

    private Integer members;

    private Integer ztai;

    public Customer(String id, String customername, String password, String phone, Integer members, Integer ztai) {
        this.id = id;
        this.customername = customername;
        this.password = password;
        this.phone = phone;
        this.members = members;
        this.ztai = ztai;
    }

    public Customer() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getMembers() {
        return members;
    }

    public void setMembers(Integer members) {
        this.members = members;
    }

    public Integer getZtai() {
        return ztai;
    }

    public void setZtai(Integer ztai) {
        this.ztai = ztai;
    }
}