package com.aaa.bean;

import java.io.Serializable;

public class Zxr implements Serializable {
    private Integer zxrid;

    private Integer taskid;

    private Integer usersid;

    private static final long serialVersionUID = 1L;

    public Integer getZxrid() {
        return zxrid;
    }

    public void setZxrid(Integer zxrid) {
        this.zxrid = zxrid;
    }

    public Integer getTaskid() {
        return taskid;
    }

    public void setTaskid(Integer taskid) {
        this.taskid = taskid;
    }

    public Integer getUsersid() {
        return usersid;
    }

    public void setUsersid(Integer usersid) {
        this.usersid = usersid;
    }
}