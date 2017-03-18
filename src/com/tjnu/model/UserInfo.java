package com.tjnu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="userInfo")
public class UserInfo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GenericGenerator(name = "generator", strategy = "native")
	@GeneratedValue(generator = "generator")
	@Column(name = "userId")
	private Integer userId;//用户编号
	@Column(name = "username", length = 40)
	private String username;//用户名
	@Column(name = "password", length = 30)
	private String password;//密码
	@Column(name = "userType", length = 1)
	private String userType;//用户类型,0表示管理员，1表示普通用户
	@Column(name = "email", length = 30)
	private String email;//邮箱
	@Column(name = "phone", length = 30)
	private String phone;//联系方式
	@Column(name = "photoAddress", length = 100)
	private String photoAddress;//头像地址
	@Column(name = "remark", length = 40)
	private String remark;//预留备注
	
	public synchronized Integer getUserId() {
		return userId;
	}
	public synchronized void setUserId(Integer userId) {
		this.userId = userId;
	}
	public synchronized String getUsername() {
		return username;
	}
	public synchronized void setUsername(String username) {
		this.username = username;
	}
	public synchronized String getPassword() {
		return password;
	}
	public synchronized void setPassword(String password) {
		this.password = password;
	}
	public synchronized String getUserType() {
		return userType;
	}
	public synchronized void setUserType(String userType) {
		this.userType = userType;
	}
	public synchronized String getEmail() {
		return email;
	}
	public synchronized void setEmail(String email) {
		this.email = email;
	}
	public synchronized String getPhone() {
		return phone;
	}
	public synchronized void setPhone(String phone) {
		this.phone = phone;
	}
	public synchronized String getPhotoAddress() {
		return photoAddress;
	}
	public synchronized void setPhotoAddress(String photoAddress) {
		this.photoAddress = photoAddress;
	}
	public synchronized String getRemark() {
		return remark;
	}
	public synchronized void setRemark(String remark) {
		this.remark = remark;
	}
	
}
