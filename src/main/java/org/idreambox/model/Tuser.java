package org.idreambox.model;

import java.util.Date;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Tuser entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tuser", catalog = "idreambox")
public class Tuser extends AbstractTuser implements java.io.Serializable {
	private static final long serialVersionUID = -2962874000111411374L;

	// Constructors

	/** default constructor */
	public Tuser() {
	}

	/** minimal constructor */
	public Tuser(String id, String email, String password) {
		super(id, email, password);
	}

	/** full constructor */
	public Tuser(String id, String name, String email, String password, Date createdatetime, Date modifydatetime, Set<Tfile> tfiles) {
		super(id, name, email, password, createdatetime, modifydatetime, tfiles);
	}

}
