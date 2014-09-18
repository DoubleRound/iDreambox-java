package org.idreambox.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

/**
 * AbstractTfile entity provides the base persistence definition of the Tfile entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractTfile implements java.io.Serializable {
	private static final long serialVersionUID = 769267033268699530L;

	// Fields

	private String id;
	private Tuser tuser;
	private String fname;
	private String url;
	private Integer isdelete;
	private String type;
	private Timestamp createdatetime;
	private Timestamp modifydatetime;

	// Constructors

	/** default constructor */
	public AbstractTfile() {
	}

	/** minimal constructor */
	public AbstractTfile(String id, Tuser tuser, String fname, String url, Integer isdelete) {
		this.id = id;
		this.tuser = tuser;
		this.fname = fname;
		this.url = url;
		this.isdelete = isdelete;
	}

	/** full constructor */
	public AbstractTfile(String id, Tuser tuser, String fname, String url, Integer isdelete, String type, Timestamp createdatetime, Timestamp modifydatetime) {
		this.id = id;
		this.tuser = tuser;
		this.fname = fname;
		this.url = url;
		this.isdelete = isdelete;
		this.type = type;
		this.createdatetime = createdatetime;
		this.modifydatetime = modifydatetime;
	}

	// Property accessors
	@Id
	@Column(name = "id", unique = true, nullable = false, length = 36)
	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "uid", nullable = false)
	public Tuser getTuser() {
		return this.tuser;
	}

	public void setTuser(Tuser tuser) {
		this.tuser = tuser;
	}

	@Column(name = "fname", nullable = false, length = 50)
	public String getFname() {
		return this.fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	@Column(name = "url", nullable = false, length = 100)
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Column(name = "isdelete", nullable = false)
	public Integer getIsdelete() {
		return this.isdelete;
	}

	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}

	@Column(name = "type", length = 10)
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "createdatetime", length = 19)
	public Timestamp getCreatedatetime() {
		return this.createdatetime;
	}

	public void setCreatedatetime(Timestamp createdatetime) {
		this.createdatetime = createdatetime;
	}

	@Column(name = "modifydatetime", length = 19)
	public Timestamp getModifydatetime() {
		return this.modifydatetime;
	}

	public void setModifydatetime(Timestamp modifydatetime) {
		this.modifydatetime = modifydatetime;
	}

}