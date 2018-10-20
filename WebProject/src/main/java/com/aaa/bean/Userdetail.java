package com.aaa.bean;

import java.io.Serializable;

import javax.persistence.Id;

public class Userdetail implements Serializable {
	@Id
    private Integer detailid;

    private String usersex;

    private String usernum;

    private String entrydate;

    private String phone;

    private String telephone;

    private String email;

    private String birthdate;

    private String positivedate;

    private String description;

    private String message;

    private String nativeplace;

    private String nation;

    private String politics;

    private String marriage;

    private String idnumber;

    private String address;

    private String school;

    private String education;

    private String major;

    private String hobby;

    private String status;

    private String dependence;

    private String position;

    private String username;

    private static final long serialVersionUID = 1L;

    public Integer getDetailid() {
        return detailid;
    }
     
    public void setDetailid(Integer detailid) {
        this.detailid = detailid;
    }

    public String getUsersex() {
        return usersex;
    }

    public void setUsersex(String usersex) {
        this.usersex = usersex == null ? null : usersex.trim();
    }

    public String getUsernum() {
        return usernum;
    }

    public void setUsernum(String usernum) {
        this.usernum = usernum == null ? null : usernum.trim();
    }

    public String getEntrydate() {
        return entrydate;
    }

    public void setEntrydate(String entrydate) {
        this.entrydate = entrydate == null ? null : entrydate.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate == null ? null : birthdate.trim();
    }

    public String getPositivedate() {
        return positivedate;
    }

    public void setPositivedate(String positivedate) {
        this.positivedate = positivedate == null ? null : positivedate.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public String getNativeplace() {
        return nativeplace;
    }

    public void setNativeplace(String nativeplace) {
        this.nativeplace = nativeplace == null ? null : nativeplace.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getPolitics() {
        return politics;
    }

    public void setPolitics(String politics) {
        this.politics = politics == null ? null : politics.trim();
    }

    public String getMarriage() {
        return marriage;
    }

    public void setMarriage(String marriage) {
        this.marriage = marriage == null ? null : marriage.trim();
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber == null ? null : idnumber.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education == null ? null : education.trim();
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major == null ? null : major.trim();
    }

    public String getHobby() {
        return hobby;
    }

    public void setHobby(String hobby) {
        this.hobby = hobby == null ? null : hobby.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getDependence() {
        return dependence;
    }

    public void setDependence(String dependence) {
        this.dependence = dependence == null ? null : dependence.trim();
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position == null ? null : position.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

	@Override
	public String toString() {
		return "Userdetail [detailid=" + detailid + ", usersex=" + usersex + ", usernum=" + usernum + ", entrydate="
				+ entrydate + ", phone=" + phone + ", telephone=" + telephone + ", email=" + email + ", birthdate="
				+ birthdate + ", positivedate=" + positivedate + ", description=" + description + ", message=" + message
				+ ", nativeplace=" + nativeplace + ", nation=" + nation + ", politics=" + politics + ", marriage="
				+ marriage + ", idnumber=" + idnumber + ", address=" + address + ", school=" + school + ", education="
				+ education + ", major=" + major + ", hobby=" + hobby + ", status=" + status + ", dependence="
				+ dependence + ", position=" + position + ", username=" + username + "]";
	}
}