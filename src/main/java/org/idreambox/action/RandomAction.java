package org.idreambox.action;

import java.io.ByteArrayInputStream;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.idreambox.util.RandomNumUtil;

import com.opensymphony.xwork2.ActionSupport;

public class RandomAction extends ActionSupport implements SessionAware {
	private static final long serialVersionUID = 8470895863404567888L;

	private ByteArrayInputStream inputStream;
	private Map<String, Object> session;

	public void setInputStream(ByteArrayInputStream inputStream) {
		this.inputStream = inputStream;
	}

	public ByteArrayInputStream getInputStream() {
		return inputStream;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String execute() throws Exception {
		RandomNumUtil rdnu = RandomNumUtil.Instance();
		// 取得带有随机字符串的图片
		this.setInputStream(rdnu.getImage());
		// 取得随机字符串放入session
		session.put("captcha", rdnu.getString().trim());
		return SUCCESS;
	}

}
