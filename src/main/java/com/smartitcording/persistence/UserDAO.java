package com.smartitcording.persistence;

import java.util.Date;
import java.util.List;

import com.smartitcording.domain.AddressVO;
import com.smartitcording.domain.UserVO;
import com.smartitcording.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto)throws Exception;
	
	  public void keepLogin(String uid, String sessionId, Date next);
	  
	  public UserVO checkUserWithSessionKey(String value);	
	  
	  //회원가입처리
	  
	  public void joinPost(UserVO user);
	  
	  public UserVO confirmId(UserVO uid);

	  public List<AddressVO> findzipnum(AddressVO address);
	  
	  // 아아디 비밀번호 찾기 로직관련
	  public UserVO idfindofmail(UserVO user);
	  
	  public void encrypthash(String pwUriEnc,String userid);
	  
	  public UserVO hashbyid(UserVO user);
	  
	  public void modifypw(UserVO user);
}



