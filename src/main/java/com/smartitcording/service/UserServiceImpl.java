package com.smartitcording.service;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.smartitcording.domain.AddressVO;
import com.smartitcording.domain.UserVO;
import com.smartitcording.dto.LoginDTO;
import com.smartitcording.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

  @Inject
  private UserDAO dao;

  @Override
  public UserVO login(LoginDTO dto) throws Exception {

    return dao.login(dto);
  }
  
  @Override
  public void keepLogin(String uid, String sessionId, Date next)
      throws Exception {
    
    dao.keepLogin(uid, sessionId, next);
    
  }

  @Override
  public UserVO checkLoginBefore(String value) {
    
    return dao.checkUserWithSessionKey(value);
  }

  @Override
  public void joinPost(UserVO user) throws Exception {
	// TODO Auto-generated method stub
	  
	  dao.joinPost(user);
	  
  }

@Override
public UserVO id_checkPost(UserVO uid) throws Exception {
	// TODO Auto-generated method stub
	
		return dao.confirmId(uid);
	
	
}

@Override
public List<AddressVO> findzipnum(AddressVO address) throws Exception {
	// TODO Auto-generated method stub
	return dao.findzipnum(address);
}
}
