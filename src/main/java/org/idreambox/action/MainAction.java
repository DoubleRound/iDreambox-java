package org.idreambox.action;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.idreambox.pageModel.User;
import org.idreambox.service.UserServiceI;
import org.idreambox.util.Constants;
import org.idreambox.util.CookieUtils;
import org.springframework.beans.factory.annotation.Autowired;

public class MainAction extends BaseAction implements SessionAware, ServletRequestAware {
	private static final long serialVersionUID = -1720321261903015806L;

	/**
	 * Logger for this class
	 */
	@SuppressWarnings("unused")
	private static final Logger logger = Logger.getLogger(MainAction.class);

	private Map<String, Object> session;
	private HttpServletRequest request;
	private UserServiceI userService;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public UserServiceI getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	/**
	 * 跳转到系统主页
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public String index() {

		// 如果session为空，试着读取cookie
		if (session.get(Constants.USER_SESSION) == null) {
			Cookie cookie = CookieUtils.getCookie(Constants.USER_COOKIE, request);
			if (cookie != null) {
				String value = cookie.getValue();

				if (StringUtils.isNotBlank(value)) {
					String[] split = value.split(",");
					String id = split[0].trim();
					String email = split[1].trim();
					String password = split[2].trim();

					User user = new User();
					user.setId(id);
					user.setEmail(email);
					user.setPassword(password);

					// 不能使用login()，因为login()经过加密，从cookie中得到的密码是已经加密过的密文
					user = userService.loginCookie(user);
					if (user != null) {
						// 添加用户到session中
						session.put(Constants.USER_SESSION, user);
					}
				}
			}
		}

		return "goto_main_jsp";
	}

}
