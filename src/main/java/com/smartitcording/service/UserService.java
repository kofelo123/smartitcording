package com.smartitcording.service;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;

import com.smartitcording.domain.AddressVO;
import com.smartitcording.domain.UserVO;
import com.smartitcording.dto.LoginDTO;

public interface UserService {

  public UserVO login(LoginDTO dto) throws Exception;

  public void keepLogin(String uid, String sessionId, Date next)throws Exception;
  
  public UserVO checkLoginBefore(String value);  
    
  public void joinPost(UserVO user) throws Exception;
  
  public UserVO id_checkPost(UserVO uid) throws Exception;
  
  public List<AddressVO> findzipnum(AddressVO address)throws Exception;
  
  public void idfindmail(HttpServletRequest request, ModelMap mo,UserVO user)throws Exception;
  
  public void hashbyid(UserVO user)throws Exception;
}
