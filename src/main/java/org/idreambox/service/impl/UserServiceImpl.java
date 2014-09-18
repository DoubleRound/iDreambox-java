package org.idreambox.service.impl;

import org.apache.log4j.Logger;
import org.idreambox.dao.BaseDaoI;
import org.idreambox.model.Tuser;
import org.idreambox.pageModel.User;
import org.idreambox.service.UserServiceI;
import org.idreambox.util.Encrypt;
import org.idreambox.util.Verify;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserServiceI {

	/**
	 * Logger for this class
	 */
	@SuppressWarnings("unused")
	private static final Logger logger = Logger.getLogger(UserServiceImpl.class);

	private BaseDaoI<Tuser> userDao;

	public BaseDaoI<Tuser> getUserDao() {
		return userDao;
	}

	@Autowired
	public void setUserDao(BaseDaoI<Tuser> userDao) {
		this.userDao = userDao;
	}

	/**
	 * 保存用户
	 * 
	 * @author DoubleRound
	 * 
	 * */
	@Override
	public Serializable save(User user) {
		Tuser tuser = new Tuser();
		BeanUtils.copyProperties(user, tuser, new String[] { "password" });
		tuser.setId(UUID.randomUUID().toString());
		tuser.setPassword(Encrypt.md5(user.getPassword()));
		tuser.setCreatedatetime(new Date());
		return userDao.save(tuser);
	}

	/**
	 * 校验邮箱和昵称是否存在（重复）
	 * 
	 * @author DoubleRound
	 * 
	 * */
	@Override
	public List<User> verifyUser(User user) {
		List<User> lu = new ArrayList<User>();
		if (user != null) {
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("name", user.getName());
			params.put("email", user.getEmail());
			List<Tuser> lt = userDao.find("from Tuser t where t.name = :name or t.email = :email", params);
			if (lt.size() > 0) {
				for (Tuser t : lt) {
					User u = new User();
					BeanUtils.copyProperties(t, u, new String[] { "password" });
					lu.add(u);
				}
			}
		}
		return lu;
	}

	/**
	 * 用户登录
	 * 
	 * @author DoubleRound
	 * 
	 * */
	@Override
	public User login(User user) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("email", Verify.formatEmail(user.getEmail().trim()));

		// 验证邮箱是否注册
		Tuser t1 = userDao.get("from Tuser t where t.email = :email", params);

		if (t1 != null) {
			params.put("password", Encrypt.e(user.getPassword().trim()));
			Tuser t2 = userDao.get("from Tuser t where t.email = :email and t.password = :password", params);
			if (t2 != null) {
				User u = new User();
				BeanUtils.copyProperties(t2, u);
				return u;
			} else {
				User u2 = new User();
				u2.setEmail(user.getEmail().trim());
				return u2;
			}
		}
		return null;
	}

	/**
	 * cookie登录
	 * 
	 * @author DoubleRound
	 * 
	 * */
	@Override
	public User loginCookie(User user) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", user.getId().trim());
		params.put("email", user.getEmail().trim());
		params.put("password", user.getPassword().trim());
		Tuser t = userDao.get("from Tuser t where t.id = :id and t.email = :email and t.password = :password", params);
		if (t != null) {
			User u = new User();
			BeanUtils.copyProperties(t, u);
			return u;
		}
		return null;
	}

}
