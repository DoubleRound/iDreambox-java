package org.idreambox.action;

import org.apache.log4j.Logger;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import org.idreambox.pageModel.Json;
import org.idreambox.pageModel.User;
import org.idreambox.service.UserServiceI;
import org.idreambox.util.Constants;
import org.idreambox.util.CookieUtils;
import org.idreambox.util.BaseSupport;
import org.idreambox.util.Verify;
import org.springframework.beans.factory.annotation.Autowired;

public class UserAction extends BaseAction implements SessionAware, ServletRequestAware, ServletResponseAware {
	private static final long serialVersionUID = -8828692794840509670L;

	/**
	 * Logger for this class
	 */
	@SuppressWarnings("unused")
	private static final Logger logger = Logger.getLogger(UserAction.class);

	private UserServiceI userService;
	private Map<String, Object> session;
	private HttpServletRequest request;
	private HttpServletResponse response;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserServiceI getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	/**
	 * 跳转到注册页面
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public String registerBefore() {
		return "goto_register_jsp";
	}

	/**
	 * 保存注册信息
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public void register() {
		Json jsonResult = new Json();
		String re = Verify.checkUser(user);

		if (BaseSupport.SUCCESS.equals(re)) {
			user.setName(user.getName().trim());
			user.setEmail(Verify.formatEmail(user.getEmail().trim()));
			user.setPassword(user.getPassword().trim());

			if (session.get("captcha") != null) {
				if (user.getCaptcha().trim().equals(session.get("captcha").toString().trim())) {
					List<User> lu = userService.verifyUser(user);
					if (lu.size() > 0) {
						for (User u : lu) {
							if (user.getEmail().equals(u.getEmail())) {
								jsonResult.setSuccess(false);
								jsonResult.setMsg(BaseSupport.EMAIL_REGISTERED);
								break;
							} else if (user.getName().equals(u.getName())) {
								jsonResult.setSuccess(false);
								jsonResult.setMsg(BaseSupport.NAME_REGISTERED);
								break;
							}
						}
					} else {
						userService.save(user);
						jsonResult.setSuccess(true);
						jsonResult.setMsg(BaseSupport.REG_SUCCESS);
					}
				} else {
					jsonResult.setSuccess(false);
					jsonResult.setMsg(BaseSupport.CAPTCHA_INPUT_ERROR);
				}
			} else {
				jsonResult.setSuccess(false);
				jsonResult.setMsg(BaseSupport.CAPTCHA_TIMEOUT);
			}
		} else {
			jsonResult.setSuccess(false);
			jsonResult.setMsg(re);
		}

		super.writeJson(jsonResult);
	}

	/**
	 * 跳转到登陆界面
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public String loginBefore() {
		return "goto_login_jsp";
	}

	/**
	 * 登录
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public void login() {

		String tempAuto = user.getAutoLogon();
		user.setEmail(Verify.formatEmail(user.getEmail().trim()));

		User u = userService.login(user);

		Json jsonResult = new Json();
		if (u != null) {
			if (u.getEmail() != null && !"".equals(u.getEmail()) && (u.getPassword() == null || "".equals(u.getPassword()))) {
				jsonResult.setSuccess(false);
				// 您输入的密码错误！^_^\"
				jsonResult.setMsg(BaseSupport.PWD_INPUT_ERROR);
			} else if (u.getEmail() != null && !"".equals(u.getEmail().trim()) && u.getPassword() != null && !"".equals(u.getPassword())) {

				// 创建cookie
				if ("remember-me".equals(tempAuto)) {
					String value = u.getId() + "," + u.getEmail() + "," + u.getPassword();
					CookieUtils.addCookie(Constants.USER_COOKIE, value, response);
				}

				// 将用户存放到session中
				session.put(Constants.USER_SESSION, u);

				jsonResult.setSuccess(true);
				jsonResult.setMsg(BaseSupport.LOGIN_SUCCESS);
				jsonResult.setObj(u);
			} else {
				jsonResult.setSuccess(false);
				jsonResult.setMsg(BaseSupport.SYSTEM_ERROR);
			}
		} else {
			jsonResult.setSuccess(false);
			jsonResult.setMsg(BaseSupport.EMAIL_REGISTERED);
		}

		super.writeJson(jsonResult);
	}

	/**
	 * 退出登录
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public String logout() {
		User u = (User) session.get(Constants.USER_SESSION);
		if (u != null) {
			// 删除cookie
			CookieUtils.delCookie(Constants.USER_COOKIE, request, response);
			// 删除session
			session.remove(Constants.USER_SESSION);
		}
		return "goto_main_action";
	}

}
