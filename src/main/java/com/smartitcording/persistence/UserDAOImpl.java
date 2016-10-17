package com.smartitcording.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.smartitcording.domain.AddressVO;
import com.smartitcording.domain.UserVO;
import com.smartitcording.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="com.smartitcording.mapper.UserMapper";	

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace +".login", dto);
	}
	
  @Override
  public void keepLogin(String uid, String sessionId, Date next) {

    Map<String, Object> paramMap = new HashMap<String, Object>();
    paramMap.put("uid", uid);
    paramMap.put("sessionId", sessionId);
    paramMap.put("next", next);
    
    session.update(namespace+".keepLogin", paramMap);
    
  }

  @Override
  public UserVO checkUserWithSessionKey(String value) {

    return session.selectOne(namespace +".checkUserWithSessionKey", value);
  }

  @Override
  public void joinPost(UserVO user) {
	// TODO Auto-generated method stub
	
	session.insert(namespace + ".join", user);
	
  }

@Override
public UserVO confirmId(UserVO uid) {
	// TODO Auto-generated method stub
	return session.selectOne(namespace +".confirmId", uid);
	}

@Override
public List<AddressVO> findzipnum(AddressVO address) {
	// TODO Auto-generated method stub
	return session.selectList(namespace +".findzipnum", address);
}

@Override
public UserVO idfindofmail(UserVO user) {
	// TODO Auto-generated method stub
	return session.selectOne(namespace +".idfindofmail",user);
}

@Override
public void encrypthash(String pwUriEnc,String userid) { // keeplogin참조 -> 여기서 여러 파라미터 지원x-> map으로 넣어준다.
	// TODO Auto-generated method stub
	 Map<String, Object> paramMap = new HashMap<String, Object>();
	    paramMap.put("pwUriEnc", pwUriEnc);
	    paramMap.put("userid", userid);
	    
	
	session.update(namespace +".encrypthash",paramMap);
}
}
