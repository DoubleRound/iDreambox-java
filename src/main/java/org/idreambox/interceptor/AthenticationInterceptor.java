package org.idreambox.interceptor;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.interceptor.ServletRequestAware;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.idreambox.pageModel.User;
import org.idreambox.service.UserServiceI;
import org.idreambox.util.Constants;
import org.idreambox.util.CookieUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AthenticationInterceptor extends AbstractInterceptor implements ServletRequestAware {
	/**
	 * Logger for this class
	 */
	@SuppressWarnings("unused")
	private static final Logger logger = Logger.getLogger(AthenticationInterceptor.class);

	private static final long serialVersionUID = 7765573637156768277L;

	private UserServiceI userService;
	private HttpServletRequest request;

	public UserServiceI getUserService() {
		return userService;
	}

	@Autowired
	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {

		// 取得请求相关的ActionContext实例
		ActionContext ctx = invocation.getInvocationContext();
		Map<String, Object> session = ctx.getSession();
		User user = (User) session.get(Constants.USER_SESSION);

		// 如果session为空，则查找cookie，如果cookie也为空则返回登录
		if (user == null) {
			Cookie cookie = CookieUtils.getCookie(Constants.USER_COOKIE, request);
			if (cookie != null) {
				String value = cookie.getValue();
				if (StringUtils.isNotBlank(value)) {
					String[] split = value.split(",");
					String id = split[0].trim();
					String email = split[1].trim();
					String password = split[2].trim();

					user = new User();
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
				return invocation.invoke();
			}
		} else {
			return invocation.invoke();
		}
		return "goto_login_action";
	}

}