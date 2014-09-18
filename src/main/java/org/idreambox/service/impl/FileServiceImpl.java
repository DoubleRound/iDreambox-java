package org.idreambox.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.idreambox.dao.BaseDaoI;
import org.idreambox.model.Tfile;
import org.idreambox.model.Tuser;
import org.idreambox.pageModel.Pfile;
import org.idreambox.pageModel.User;
import org.idreambox.service.FileServiceI;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("fileService")
public class FileServiceImpl implements FileServiceI {

	private BaseDaoI<Tfile> fileDao;

	public BaseDaoI<Tfile> getFileDao() {
		return fileDao;
	}

	@Autowired
	public void setFileDao(BaseDaoI<Tfile> fileDao) {
		this.fileDao = fileDao;
	}

	@Override
	public Serializable save(Pfile pfile) {
		Tfile tfile = new Tfile();
		BeanUtils.copyProperties(pfile, tfile);
		Tuser tuser = new Tuser();
		BeanUtils.copyProperties(pfile.getUser(), tuser);
		tfile.setTuser(tuser);
		return fileDao.save(tfile);
	}

	@Override
	public List<Pfile> getFileListForUser(User user) {
		List<Pfile> pfs = new ArrayList<Pfile>();
		if (user != null && !"".equals(user.getId())) {
			Map<String, Object> params = new HashMap<String, Object>();
			params.put("uid", user.getId());
			List<Tfile> tfs = fileDao.find("from Tfile t where t.Tuser.id = :uid", params);
			if (tfs != null && tfs.size() > 0) {
				for (Tfile tfile : tfs) {
					Pfile pfile = new Pfile();
					BeanUtils.copyProperties(tfile, pfile);
					User u = new User();
					BeanUtils.copyProperties(tfile.getTuser(), u);
					pfs.add(pfile);
				}
			}
		}
		return pfs;
	}
}
