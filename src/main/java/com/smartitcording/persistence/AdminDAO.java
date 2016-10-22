package com.smartitcording.persistence;

import java.util.List;

import com.smartitcording.domain.UserVO;

public interface AdminDAO {

	public List<UserVO> listuser()throws Exception;
	
	public void adminlogin(UserVO user) throws Exception;
}
