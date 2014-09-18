package org.idreambox.model;

import java.sql.Timestamp;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Tfile entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "tfile", catalog = "idreambox")
public class Tfile extends AbstractTfile implements java.io.Serializable {
	private static final long serialVersionUID = -7897433762403087446L;

	// Constructors

	/** default constructor */
	public Tfile() {
	}

	/** minimal constructor */
	public Tfile(String id, Tuser tuser, String fname, String url, Integer isdelete) {
		super(id, tuser, fname, url, isdelete);
	}

	/** full constructor */
	public Tfile(String id, Tuser tuser, String fname, String url, Integer isdelete, String type, Timestamp createdatetime, Timestamp modifydatetime) {
		super(id, tuser, fname, url, isdelete, type, createdatetime, modifydatetime);
	}

}
