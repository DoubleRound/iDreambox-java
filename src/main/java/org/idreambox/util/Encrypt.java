package org.idreambox.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 加密工具类
 * 
 * md5加密出来的长度是32位
 * 
 * sha加密出来的长度是40位
 * 
 * @author 田伟松
 * 
 */
public class Encrypt {

	/**
	 * 测试
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		// md5加密测试
//		String md5_1 = md5("dr");
//		System.out.println(md5_1);
//		String md5_2 = md5("dR");
//		System.out.println(md5_2);
//		String md5_3 = md5("Dr");
//		System.out.println(md5_3);
//		String md5_4 = md5("DR");
//		System.out.println(md5_4);
		
		// sha加密测试
		String sha_1 = sha("FEWFwefe");//356A192B7913B04C54574D18C28D46E6395428AB
		System.out.println(sha_1);
//		String sha_2 = sha("dR");
//		System.out.println(sha_2);
//		String sha_3 = sha("Dr");
//		System.out.println(sha_3);
//		String sha_4 = sha("DR");
//		System.out.println(sha_4);

//		String sha_5 = sha("d");
//		System.out.println(sha_5);
//		String sha_6 = sha("D");
//		System.out.println(sha_6);

//		User user = new User();
//		
//		System.out.println("".equals(user.getEmail()));
//		System.out.println(user.getEmail() == null);
	}

	/**
	 * 加密
	 * 
	 * @param inputText
	 * @return
	 */
	public static String e(String inputText) {
		return md5(inputText);
	}

	/**
	 * 二次加密，应该破解不了了吧？
	 * 
	 * @param inputText
	 * @return
	 */
	public static String md5AndSha(String inputText) {
		return sha(md5(inputText));
	}

	/**
	 * md5加密
	 * 
	 * @param inputText
	 * @return
	 */
	public static String md5(String inputText) {
		return encrypt(inputText, "md5");
	}

	/**
	 * sha加密
	 * 
	 * @param inputText
	 * @return
	 */
	public static String sha(String inputText) {
		return encrypt(inputText, "sha-1");
	}

	/**
	 * md5或者sha-1加密
	 * 
	 * @param inputText
	 *            要加密的内容，区分大小写
	 * @param algorithmName
	 *            加密算法名称：md5或者sha-1，不区分大小写
	 * @return
	 */
	private static String encrypt(String inputText, String algorithmName) {
		if (inputText == null || "".equals(inputText.trim())) {
			throw new IllegalArgumentException("请输入要加密的内容");
		}
		if (algorithmName == null || "".equals(algorithmName.trim())) {
			algorithmName = "md5";
		}
		String encryptText = null;
		try {
			MessageDigest m = MessageDigest.getInstance(algorithmName);
			m.update(inputText.getBytes("UTF8"));
			byte s[] = m.digest();
			return hex(s);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return encryptText;
	}

	/**
	 * 返回十六进制字符串
	 * 
	 * @param arr
	 * @return
	 */
	private static String hex(byte[] arr) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < arr.length; ++i) {
			sb.append(Integer.toHexString((arr[i] & 0xFF) | 0x100).substring(1, 3));
		}
		return sb.toString();
	}

}
