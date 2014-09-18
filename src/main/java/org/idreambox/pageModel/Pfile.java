package org.idreambox.pageModel;

import java.sql.Timestamp;

public class Pfile {

	private String id;
	private User user;
	private String fname;
	private String url;
	private Integer isdelete;
	private String type;
	private Timestamp createdatetime;
	private Timestamp modifydatetime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Timestamp getCreatedatetime() {
		return createdatetime;
	}

	public void setCreatedatetime(Timestamp createdatetime) {
		this.createdatetime = createdatetime;
	}

	public Timestamp getModifydatetime() {
		return modifydatetime;
	}

	public void setModifydatetime(Timestamp modifydatetime) {
		this.modifydatetime = modifydatetime;
	}
}
