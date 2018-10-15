package com.aaa.bean;

import java.sql.Date;

public class Userdetail {
  private int detailId;
  private String UserSex;
  private String UserNum;
  private Date entryDate;
  private String phone;
  private String telephone;
  private String email;
  private String birthDate;
  private String positiveDate;
  private String description;
  private String message;
  private String nativeplace;
  private String nation;
  private String politics;
  private String marriage;
  private String IDnumber;
  private String address;
  private String school;
  private String education;
  private String major;
  private String hobby;
  private String status;
  private String dependence;
  private String position;
  private String username;
public int getDetailId() {
	return detailId;
}
public void setDetailId(int detailId) {
	this.detailId = detailId;
}
public String getUserSex() {
	return UserSex;
}
public void setUserSex(String userSex) {
	UserSex = userSex;
}
public String getUserNum() {
	return UserNum;
}
public void setUserNum(String userNum) {
	UserNum = userNum;
}
public Date getEntryDate() {
	return entryDate;
}
public void setEntryDate(Date entryDate) {
	this.entryDate = entryDate;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getBirthDate() {
	return birthDate;
}
public void setBirthDate(String birthDate) {
	this.birthDate = birthDate;
}
public String getPositiveDate() {
	return positiveDate;
}
public void setPositiveDate(String positiveDate) {
	this.positiveDate = positiveDate;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public String getNativeplace() {
	return nativeplace;
}
public void setNativeplace(String nativeplace) {
	this.nativeplace = nativeplace;
}
public String getNation() {
	return nation;
}
public void setNation(String nation) {
	this.nation = nation;
}
public String getPolitics() {
	return politics;
}
public void setPolitics(String politics) {
	this.politics = politics;
}
public String getMarriage() {
	return marriage;
}
public void setMarriage(String marriage) {
	this.marriage = marriage;
}
public String getIDnumber() {
	return IDnumber;
}
public void setIDnumber(String iDnumber) {
	IDnumber = iDnumber;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getSchool() {
	return school;
}
public void setSchool(String school) {
	this.school = school;
}
public String getEducation() {
	return education;
}
public void setEducation(String education) {
	this.education = education;
}
public String getMajor() {
	return major;
}
public void setMajor(String major) {
	this.major = major;
}
public String getHobby() {
	return hobby;
}
public void setHobby(String hobby) {
	this.hobby = hobby;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getDependence() {
	return dependence;
}
public void setDependence(String dependence) {
	this.dependence = dependence;
}
public String getPosition() {
	return position;
}
public void setPosition(String position) {
	this.position = position;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public Userdetail(int detailId, String userSex, String userNum, Date entryDate, String phone, String telephone,
		String email, String birthDate, String positiveDate, String description, String message, String nativeplace,
		String nation, String politics, String marriage, String iDnumber, String address, String school,
		String education, String major, String hobby, String status, String dependence, String position,
		String username) {
	super();
	this.detailId = detailId;
	UserSex = userSex;
	UserNum = userNum;
	this.entryDate = entryDate;
	this.phone = phone;
	this.telephone = telephone;
	this.email = email;
	this.birthDate = birthDate;
	this.positiveDate = positiveDate;
	this.description = description;
	this.message = message;
	this.nativeplace = nativeplace;
	this.nation = nation;
	this.politics = politics;
	this.marriage = marriage;
	IDnumber = iDnumber;
	this.address = address;
	this.school = school;
	this.education = education;
	this.major = major;
	this.hobby = hobby;
	this.status = status;
	this.dependence = dependence;
	this.position = position;
	this.username = username;
}
public Userdetail() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Userdetail [detailId=" + detailId + ", UserSex=" + UserSex + ", UserNum=" + UserNum + ", entryDate="
			+ entryDate + ", phone=" + phone + ", telephone=" + telephone + ", email=" + email + ", birthDate="
			+ birthDate + ", positiveDate=" + positiveDate + ", description=" + description + ", message=" + message
			+ ", nativeplace=" + nativeplace + ", nation=" + nation + ", politics=" + politics + ", marriage="
			+ marriage + ", IDnumber=" + IDnumber + ", address=" + address + ", school=" + school + ", education="
			+ education + ", major=" + major + ", hobby=" + hobby + ", status=" + status + ", dependence=" + dependence
			+ ", position=" + position + ", username=" + username + "]";
}
  
  
  
  
}
