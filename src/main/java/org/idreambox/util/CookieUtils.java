package org.idreambox.util;

import org.apache.log4j.Logger;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * cookie的增加、删除、查询
 */
public class CookieUtils {
	/**
	 * Logger for this class
	 */
	@SuppressWarnings("unused")
	private static final Logger logger = Logger.getLogger(CookieUtils.class);

	/**
	 * 创建cookie
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static void addCookie(String key, String value, HttpServletResponse response) {
		Cookie cookie = new Cookie(key.trim(), value.trim());
		cookie.setMaxAge(60 * 60 * 24 * 7);// cookie保存一周
		cookie.setPath("/");
		response.addCookie(cookie);
	}

	/**
	 * 得到cookie
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static Cookie getCookie(String key, HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (key.trim().equals(cookie.getName().trim())) {
					return cookie;
				}
			}
		}
		return null;
	}

	/**
	 * 删除cookie
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static void delCookie(String key, HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (key.trim().equals(cookie.getName().trim())) {
					cookie.setValue("");
					cookie.setMaxAge(0);
					cookie.setPath("/");
					response.addCookie(cookie);
				}
			}
		}
	}

}
