package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Contract implements Serializable {
	@Id
    private Integer contractid;

    private Integer clientid;

    private String contracplc;

    private String contraccity;

    private String contracaddress;

    private String contracname;

    private String contracnumber;

    private Double contracmoney;

    private String signingdate;

    private String effectivedate;

    private String saasdate;

    private String linkman;

    private String telephone;

    private String cellphone;

    private String contracqq;

    private String terms;

    private String businessterms;

    private String department;

    private String contracstate;

    private Integer detailid;
    private static final long serialVersionUID = 1L;

    public Integer getContractid() {
        return contractid;
    }

    public void setContractid(Integer contractid) {
        this.contractid = contractid;
    }

    public Integer getClientid() {
        return clientid;
    }

    public void setClientid(Integer clientid) {
        this.clientid = clientid;
    }

    public String getContracplc() {
        return contracplc;
    }

    public void setContracplc(String contracplc) {
        this.contracplc = contracplc == null ? null : contracplc.trim();
    }

    public String getContraccity() {
        return contraccity;
    }

    public void setContraccity(String contraccity) {
        this.contraccity = contraccity == null ? null : contraccity.trim();
    }

    public String getContracaddress() {
        return contracaddress;
    }

    public void setContracaddress(String contracaddress) {
        this.contracaddress = contracaddress == null ? null : contracaddress.trim();
    }

    public String getContracname() {
        return contracname;
    }

    public void setContracname(String contracname) {
        this.contracname = contracname == null ? null : contracname.trim();
    }

    public String getContracnumber() {
        return contracnumber;
    }

    public void setContracnumber(String contracnumber) {
        this.contracnumber = contracnumber == null ? null : contracnumber.trim();
    }

    public Double getContracmoney() {
        return contracmoney;
    }

    public void setContracmoney(Double contracmoney) {
        this.contracmoney = contracmoney;
    }

    public String getSigningdate() {
        return signingdate;
    }

    public void setSigningdate(String signingdate) {
        this.signingdate = signingdate == null ? null : signingdate.trim();
    }

    public String getEffectivedate() {
        return effectivedate;
    }

    public void setEffectivedate(String effectivedate) {
        this.effectivedate = effectivedate == null ? null : effectivedate.trim();
    }

    public String getSaasdate() {
        return saasdate;
    }

    public void setSaasdate(String saasdate) {
        this.saasdate = saasdate == null ? null : saasdate.trim();
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman == null ? null : linkman.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone == null ? null : cellphone.trim();
    }

    public String getContracqq() {
        return contracqq;
    }

    public void setContracqq(String contracqq) {
        this.contracqq = contracqq == null ? null : contracqq.trim();
    }

    public String getTerms() {
        return terms;
    }

    public void setTerms(String terms) {
        this.terms = terms == null ? null : terms.trim();
    }

    public String getBusinessterms() {
        return businessterms;
    }

    public void setBusinessterms(String businessterms) {
        this.businessterms = businessterms == null ? null : businessterms.trim();
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getContracstate() {
        return contracstate;
    }

    public void setContracstate(String contracstate) {
        this.contracstate = contracstate == null ? null : contracstate.trim();
    }

    public Integer getDetailid() {
        return detailid;
    }

    public void setDetailid(Integer detailid) {
        this.detailid = detailid;
    }

	@Override
	public String toString() {
		return "Contract [contractid=" + contractid + ", clientid=" + clientid + ", contracplc=" + contracplc
				+ ", contraccity=" + contraccity + ", contracaddress=" + contracaddress + ", contracname=" + contracname
				+ ", contracnumber=" + contracnumber + ", contracmoney=" + contracmoney + ", signingdate=" + signingdate
				+ ", effectivedate=" + effectivedate + ", saasdate=" + saasdate + ", linkman=" + linkman
				+ ", telephone=" + telephone + ", cellphone=" + cellphone + ", contracqq=" + contracqq + ", terms="
				+ terms + ", businessterms=" + businessterms + ", department=" + department + ", contracstate="
				+ contracstate + ", detailid=" + detailid + "]";
	}
    
}