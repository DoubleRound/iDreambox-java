package org.idreambox.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * AbstractTuser entity provides the base persistence definition of the Tuser entity. @author MyEclipse Persistence Tools
 */
@MappedSuperclass
public abstract class AbstractTuser implements java.io.Serializable {
	private static final long serialVersionUID = 632777770998213046L;

	// Fields
	
	private String id;
	private String name;
	private String email;
	private String password;
	private Date createdatetime;
	private Date modifydatetime;
	private Set<Tfile> tfiles = new HashSet<Tfile>(0);

	// Constructors

	/** default constructor */
	public AbstractTuser() {
	}

	/** minimal constructor */
	public AbstractTuser(String id, String email, String password) {
		this.id = id;
		this.email = email;
		this.password = password;
	}

	/** full constructor */
	public AbstractTuser(String id, String name, String email, String password, Date createdatetime, Date modifydatetime, Set<Tfile> tfiles) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.createdatetime = createdatetime;
		this.modifydatetime = modifydatetime;
		this.tfiles = tfiles;
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

	@Column(name = "name", length = 36)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "email", nullable = false, length = 36)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password", nullable = false, length = 36)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "createdatetime", length = 10)
	public Date getCreatedatetime() {
		return this.createdatetime;
	}

	public void setCreatedatetime(Date createdatetime) {
		this.createdatetime = createdatetime;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "modifydatetime", length = 10)
	public Date getModifydatetime() {
		return this.modifydatetime;
	}

	public void setModifydatetime(Date modifydatetime) {
		this.modifydatetime = modifydatetime;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "tuser")
	public Set<Tfile> getTfiles() {
		return this.tfiles;
	}

	public void setTfiles(Set<Tfile> tfiles) {
		this.tfiles = tfiles;
	}

}