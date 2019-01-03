package com.zking.ssm.model;

import java.util.Date;

public class Foodimage {
    private String id;

    private String imagename;

    private String imagetype;

    private String url;

    private Date uploadtime;

    private Integer ztai;

    public Foodimage(String id, String imagename, String imagetype, String url, Date uploadtime, Integer ztai) {
        this.id = id;
        this.imagename = imagename;
        this.imagetype = imagetype;
        this.url = url;
        this.uploadtime = uploadtime;
        this.ztai = ztai;
    }

    public Foodimage() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImagename() {
        return imagename;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename;
    }

    public String getImagetype() {
        return imagetype;
    }

    public void setImagetype(String imagetype) {
        this.imagetype = imagetype;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Date getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(Date uploadtime) {
        this.uploadtime = uploadtime;
    }

    public Integer getZtai() {
        return ztai;
    }

    public void setZtai(Integer ztai) {
        this.ztai = ztai;
    }
}