package com.smartitcording.service;

import java.util.List;

import com.smartitcording.domain.UserVO;

public interface AdminService {
	
	public List<UserVO> listuser() throws Exception;

	public UserVO adminlogin(UserVO user)throws Exception;
}
