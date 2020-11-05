package com.minibean.timewizard.model.biz;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minibean.timewizard.model.dao.UserInfoDao;
import com.minibean.timewizard.model.dto.UserInfoDto;
import com.minibean.timewizard.utils.login.UserInfoUtils;

@Service
public class UserInfoBizImpl implements UserInfoBiz {

	@Autowired
	private UserInfoDao userInfoDao;
	@Autowired
	private UserInfoUtils userInfoUtils;
	
	@Override
	public List<UserInfoDto> selectList() {
		return userInfoDao.selectList();
	}

	@Override
	public UserInfoDto selectOne(int user_no) {
		return userInfoDao.selectOne(user_no);
	}

	@Override
	public UserInfoDto selectOne(UserInfoDto dto) {
		return userInfoDao.selectOne(dto);
	}
	
	@Override
	public UserInfoDto selectOne(String user_distinct) {
		return userInfoDao.selectOne(user_distinct);
	}

	@Override
	public int insert(UserInfoDto dto) {
		try {
			dto.setUser_distinct(userInfoUtils.makeDistinctString(dto.getUser_id(), dto.getUser_email()));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			dto.setUser_distinct(dto.getUser_id());
		}
		return userInfoDao.insert(dto);
	}

	@Override
	public int update(UserInfoDto dto) {
		return userInfoDao.update(dto);
	}

	@Override
	public int delete(int user_no) {
		return userInfoDao.delete(user_no);
	}
	
	@Override
	public int idCheck(String id) {
		
		int cnt= userInfoDao.idCheck(id);
		return cnt;
	}
	
	@Override
	public int updateRoleRes(UserInfoDto dto) {
		return userInfoDao.updateRoleRes(dto);
	}
	
	@Override
	public int updateActive(UserInfoDto dto) {
		return userInfoDao.updateActive(dto);
	}

}
