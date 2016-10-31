package com.smartitcording.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.smartitcording.domain.UserVO;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.smartitcording.mapper.AdminMapper";

	@Override
	public List<UserVO> listuser() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listuser");
	}

	@Override
	public UserVO adminlogin(UserVO user) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".adminlogin",user);
	}
	
	
	
}
