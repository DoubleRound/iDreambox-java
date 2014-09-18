/**
 * 
 * 这是专门为处理参数所写的js，如果修改了BaseSupport.java,记得修改这里
 * 
 * @author DoubleRound
 * 
 */

/**
 * 验证码
 * 
 * @author DoubleRound
 * 
 * */
function changeValidateCode(obj) {
	/**
	 * 获取当前的时间作为参数，无具体意义 每次请求需要一个不同的参数，否则可能会返回同样的验证码
	 * 这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。
	 */
	var timenow = new Date().getTime();
	obj.src = "randPic.action?d=" + timenow;
}

/**
 * 处理user相关的参数
 * 
 * @author DoubleRound
 * 
 */
function userSupport(info) {
	if ("" == info) {
		return "对不起，我们未接收到任何指令信息!可能是系统故障所致，请您写封Email给管理员吧，请把您遇到问题的时间及具体情况、详细过程、操作步骤发给我们，我们会非常感谢您的！^_^\"";
	} else if ("1_1" == info) {
		return "对不起，遇到系统错误了！请您写封Email给管理员吧，请把您遇到问题的时间及具体情况、详细过程、操作步骤发给我们，我们会非常感谢您的！^_^\"";
	} else if ("1_2_1" == info) {
		return "恭喜您登陆成功！\\^o^/";
	} else if ("1_2_2" == info) {
		return "恭喜您注册成功！我们将会在10秒钟之后跳转到登陆界面，您也可以<a href=\"${pageContext.request.contextPath}/userAction!loginBefore.action\"><font color=\"red\">立即跳转</font></a>！";
	} else if ("1_3" == info) {
		return "亲，您不能一个表单都不填吧！^_^\"";
	} else if ("2_1" == info) {
		return "请您给自己起个昵称吧！^_^\"";
	} else if ("2_2" == info) {
		return "您给自己起的昵称，已经被别人占了先机用掉了，在想一个吧！^_^\"";
	} else if ("3_1" == info) {
		return "请输入您的邮箱地址！^_^\"";
	} else if ("3_2" == info) {
		return "您输入的邮箱地址格式不正确啊！^_^\" 例：aaa@bbb.ccc";
	} else if ("3_3" == info) {
		return "您输入的邮箱地址已经注册过了，您可以尝试密码找回，或换个邮箱试试！^_^\"";
	} else if ("3_4" == info) {
		return "您输入邮箱尚未注册，您可以先<a href=\"${pageContext.request.contextPath}/userAction!registerBefore.action\"><font color=\"blue\">注册</font></a>这个邮箱地址！^_^\"";
	} else if ("4_1" == info) {
		return "请输入您的密码！^_^\"";
	} else if ("4_2" == info) {
		return "请输入您的确认密码！^_^\"";
	} else if ("4_3" == info) {
		return "您输入的确认密码和密码不一致！^_^\"";
	} else if ("4_4" == info) {
		return "您输入的密码错误，如果您忘记了密码，可以尝试密码找回哦！^_^\"";
	} else if ("5_1" == info) {
		return "请输入验证码！^_^\"";
	} else if ("5_2" == info) {
		return "您输入的验证码错误，请重新输入！^_^\"";
	} else if ("5_3" == info) {
		return "您输入的验证码已超时，请您点击刷新验证码之后重新输入！^_^\"";
	} else {
		return "我们接收到了未能识别的参数！请您写封Email给管理员吧，请把您遇到问题的时间及具体情况、详细过程、操作步骤发给我们，我们会非常感谢您的！^_^\"";
	}
}