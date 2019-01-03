package com.zking.ssm.model;

public class Roomtype {
    private String id;

    private String roomtype;

    private Integer roomcount;

    public Roomtype(String id, String roomtype, Integer roomcount) {
        this.id = id;
        this.roomtype = roomtype;
        this.roomcount = roomcount;
    }

    public Roomtype() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public Integer getRoomcount() {
        return roomcount;
    }

    public void setRoomcount(Integer roomcount) {
        this.roomcount = roomcount;
    }
}