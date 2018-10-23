package com.aaa.bean;

import java.io.Serializable;

public class Itinfor implements Serializable {
    private Integer itemid;

    private String itemname;

    private String itemsort;

    private String itemnumber;

    private String department;

    private String planstarttime;

    private String planendtime;

    private Integer clientid;

    private Integer contractid;

    private String itemperson;

    private String ittelephone;

    private String itmobilephone;

    private String itemqq;

    private String estimateworkload;

    private String estimatecost;

    private String demandtarget;

    private Integer detailid;

    private String organization;

    private String itworkplan;

    private String itsum;

    private String itstate;

    private static final long serialVersionUID = 1L;

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname == null ? null : itemname.trim();
    }

    public String getItemsort() {
        return itemsort;
    }

    public void setItemsort(String itemsort) {
        this.itemsort = itemsort == null ? null : itemsort.trim();
    }

    public String getItemnumber() {
        return itemnumber;
    }

    public void setItemnumber(String itemnumber) {
        this.itemnumber = itemnumber == null ? null : itemnumber.trim();
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getPlanstarttime() {
        return planstarttime;
    }

    public void setPlanstarttime(String planstarttime) {
        this.planstarttime = planstarttime == null ? null : planstarttime.trim();
    }

    public String getPlanendtime() {
        return planendtime;
    }

    public void setPlanendtime(String planendtime) {
        this.planendtime = planendtime == null ? null : planendtime.trim();
    }

    public Integer getClientid() {
        return clientid;
    }

    public void setClientid(Integer clientid) {
        this.clientid = clientid;
    }

    public Integer getContractid() {
        return contractid;
    }

    public void setContractid(Integer contractid) {
        this.contractid = contractid;
    }

    public String getItemperson() {
        return itemperson;
    }

    public void setItemperson(String itemperson) {
        this.itemperson = itemperson == null ? null : itemperson.trim();
    }

    public String getIttelephone() {
        return ittelephone;
    }

    public void setIttelephone(String ittelephone) {
        this.ittelephone = ittelephone == null ? null : ittelephone.trim();
    }

    public String getItmobilephone() {
        return itmobilephone;
    }

    public void setItmobilephone(String itmobilephone) {
        this.itmobilephone = itmobilephone == null ? null : itmobilephone.trim();
    }

    public String getItemqq() {
        return itemqq;
    }

    public void setItemqq(String itemqq) {
        this.itemqq = itemqq == null ? null : itemqq.trim();
    }

    public String getEstimateworkload() {
        return estimateworkload;
    }

    public void setEstimateworkload(String estimateworkload) {
        this.estimateworkload = estimateworkload == null ? null : estimateworkload.trim();
    }

    public String getEstimatecost() {
        return estimatecost;
    }

    public void setEstimatecost(String estimatecost) {
        this.estimatecost = estimatecost == null ? null : estimatecost.trim();
    }

    public String getDemandtarget() {
        return demandtarget;
    }

    public void setDemandtarget(String demandtarget) {
        this.demandtarget = demandtarget == null ? null : demandtarget.trim();
    }

    public Integer getDetailid() {
        return detailid;
    }

    public void setDetailid(Integer detailid) {
        this.detailid = detailid;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization == null ? null : organization.trim();
    }

    public String getItworkplan() {
        return itworkplan;
    }

    public void setItworkplan(String itworkplan) {
        this.itworkplan = itworkplan == null ? null : itworkplan.trim();
    }

    public String getItsum() {
        return itsum;
    }

    public void setItsum(String itsum) {
        this.itsum = itsum == null ? null : itsum.trim();
    }

    public String getItstate() {
        return itstate;
    }

    public void setItstate(String itstate) {
        this.itstate = itstate == null ? null : itstate.trim();
    }
}