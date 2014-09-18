package org.idreambox.service;

import java.io.Serializable;
import java.util.List;

import org.idreambox.pageModel.User;

public interface UserServiceI {

	/**
	 * 保存用户
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public Serializable save(User user);

	/**
	 * 校验邮箱和昵称是否存在（重复）
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public List<User> verifyUser(User user);

	/**
	 * 用户登录
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public User login(User user);

	/**
	 * cookie登录
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public User loginCookie(User user);

}
