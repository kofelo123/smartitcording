package com.smartitcording.persistence;

import java.util.Date;

import com.smartitcording.domain.UserVO;
import com.smartitcording.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto)throws Exception;
	
	  public void keepLogin(String uid, String sessionId, Date next);
	  
	  public UserVO checkUserWithSessionKey(String value);	

}



