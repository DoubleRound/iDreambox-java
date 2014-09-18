package org.idreambox.service;

import java.io.Serializable;
import java.util.List;

import org.idreambox.pageModel.Pfile;
import org.idreambox.pageModel.User;

public interface FileServiceI {
	
	/**
	 * 保存file
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public Serializable save(Pfile pfile);
	
	/**
	 * 获取用户文件列表
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public List<Pfile> getFileListForUser(User user);
	
}
