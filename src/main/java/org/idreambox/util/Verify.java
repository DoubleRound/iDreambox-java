package org.idreambox.util;

import org.apache.log4j.Logger;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.idreambox.pageModel.User;

/**
 * 用于某些问题判断验证，如邮箱地址格式验证
 * 
 * @author DoubleRound
 * 
 * */

public class Verify {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(Verify.class);

	/**
	 * 验证邮箱地址是否正确
	 * 
	 * @param email
	 * @return
	 */
	public static boolean checkEmail(String email) {
		boolean flag = false;
		try {
			String check = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";
			Pattern regex = Pattern.compile(check);
			Matcher matcher = regex.matcher(email);
			flag = matcher.matches();
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * 验证手机号码
	 * 
	 * @param mobiles
	 * @return
	 */
	public static boolean isMobileNO(String mobiles) {
		boolean flag = false;
		try {
			Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
			Matcher m = p.matcher(mobiles);
			flag = m.matches();
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}

	/**
	 * 验证用户
	 * 
	 * @param user
	 * 
	 * @return
	 * 
	 */
	public static String checkUser(User user) {
		String re = BaseSupport.ALL_EMPTY;
		if (user != null) {
			if (user.getName() != null && !"".equals(user.getName().trim())) {
				if (user.getEmail() != null && !"".equals(user.getEmail().trim())) {
					if (checkEmail(user.getEmail().trim())) {
						if (user.getPassword() != null && !"".equals(user.getPassword().trim())) {
							if (user.getRepassword() != null && !"".equals(user.getRepassword().trim())) {
								if (user.getPassword().trim().equals(user.getRepassword().trim())) {
									if (user.getCaptcha() != null && !"".equals(user.getCaptcha().trim())) {
										re = BaseSupport.SUCCESS;
									} else {
										re = BaseSupport.CAPTCHA_EMPTY;
									}
								} else {
									re = BaseSupport.PWD_REPWD_NO_EQUALS;
								}
							} else {
								re = BaseSupport.REPWD_EMPTY;
							}
						} else {
							re = BaseSupport.PWD_EMPTY;
						}
					} else {
						re = BaseSupport.EMAIL_ERROR;
					}
				} else {
					re = BaseSupport.EMAIL_EMPTY;
				}
			} else {
				re = BaseSupport.NAME_EMPTY;
			}
		}
		return re;
	}

	/***
	 * 格式化邮箱 例：111@qQ.Com,111@Qq.cOm,111@QQ.coM全转化为111@qq.com 即“@”之后全转化为小写
	 * 
	 * @author DoubleRound
	 * @param email
	 *            用户邮箱
	 */
	public static String formatEmail(String email) {
		if (email != null && !"".equals(email.trim())) {
			if (Verify.checkEmail(email.trim())) {
				String tempEmail[] = email.trim().split("@");
				tempEmail[1] = tempEmail[1].toLowerCase();
				return tempEmail[0] + "@" + tempEmail[1];
			} else {
				logger.info(email);
				throw new IllegalArgumentException("蛋蛋碎了一地啊，您想调用formatEmail()至少给个正确格式的吧！");
			}
		} else {
			throw new NullPointerException("卧槽怎么出错了啊，您想调用formatEmail()别给空值啊！");
		}
	}
	
}
