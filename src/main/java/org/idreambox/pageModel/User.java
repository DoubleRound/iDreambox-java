package org.idreambox.pageModel;

import java.util.Date;

public class User {
	private String id;
	private String name; // 昵称
	private String email; // 邮箱
	private String password; // 密码
	private String repassword; // 确认密码
	private String captcha; // 验证码
	private String autoLogon; // 自动登陆
	private Date createdatetime;// 创建日期
	private Date modifydatetime;// 修改日期

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}

	public String getAutoLogon() {
		return autoLogon;
	}

	public void setAutoLogon(String autoLogon) {
		this.autoLogon = autoLogon;
	}

	public Date getCreatedatetime() {
		return createdatetime;
	}

	public void setCreatedatetime(Date createdatetime) {
		this.createdatetime = createdatetime;
	}

	public Date getModifydatetime() {
		return modifydatetime;
	}

	public void setModifydatetime(Date modifydatetime) {
		this.modifydatetime = modifydatetime;
	}

}
