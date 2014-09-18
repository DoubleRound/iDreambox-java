package org.idreambox.util;

/**
 * 这是我写的一个关于user传参的工具类，如果修改这里，请记得修改user下js里面user_support.js
 * 
 * 具体传递什么参数自己定义，必须写好注释
 * 
 * @author DoubleRound
 * 
 * @see /user/dist/js/user_support.js
 * 
 * */
public class BaseSupport {

	/**
	 * 系统错误
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String SYSTEM_ERROR = "1_1";

	/**
	 * 处理结果成功则返回
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String SUCCESS = "1_2";

	/**
	 * 登录成功
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String LOGIN_SUCCESS = "1_2_1";

	/**
	 * 注册成功
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String REG_SUCCESS = "1_2_2";

	/**
	 * 所有表单为空
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String ALL_EMPTY = "1_3";

	/**
	 * 昵称为空
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String NAME_EMPTY = "2_1";

	/**
	 * 昵称已存在
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String NAME_REGISTERED = "2_2";

	/**
	 * 邮箱为空
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String EMAIL_EMPTY = "3_1";

	/**
	 * 邮箱格式不正确
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String EMAIL_ERROR = "3_2";

	/**
	 * 邮箱已被注册
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String EMAIL_REGISTERED = "3_3";

	/**
	 * 邮箱不存在
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String EMAIL_NO_REG = "3_4";

	/**
	 * 密码为空
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String PWD_EMPTY = "4_1";

	/**
	 * 确认密码为空
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String REPWD_EMPTY = "4_2";

	/**
	 * 密码和确认密码不一致
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String PWD_REPWD_NO_EQUALS = "4_3";

	/**
	 * 密码输入错误
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String PWD_INPUT_ERROR = "4_4";

	/**
	 * 验证码为空
	 * 
	 * @author DoubleRound
	 * 
	 */
	public static final String CAPTCHA_EMPTY = "5_1";

	/**
	 * 输入的验证码错误
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String CAPTCHA_INPUT_ERROR = "5_2";

	/**
	 * 验证码超时
	 * 
	 * @author DoubleRound
	 * 
	 * */
	public static final String CAPTCHA_TIMEOUT = "5_3";

}
