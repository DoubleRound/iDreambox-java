package org.idreambox.action;

import org.apache.log4j.Logger;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {
	/**
	 * Logger for this class
	 */
	private static final Logger logger = Logger.getLogger(UploadAction.class);

	private static final long serialVersionUID = -4227778982276464812L;

	private File file;
	private String fileFileName;
	private String fileContentType;

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String execute() throws Exception {

		logger.info("执行了upload");

		// 实现上传
		InputStream is = new FileInputStream(file);
		String root = ServletActionContext.getServletContext().getRealPath("upload");
		File deskFile = new File(root, this.getFileFileName());
		OutputStream os = new FileOutputStream(deskFile);
		byte[] bytefer = new byte[1024];
		int length = 0;
		while ((length = is.read(bytefer)) != -1) {
			os.write(bytefer, 0, length);
		}
		os.close();
		is.close();
		return "success";
	}
}