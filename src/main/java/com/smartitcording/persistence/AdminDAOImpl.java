package com.smartitcording.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.smartitcording.mapper.AdminMapper";

	@Override
	public void userlist() throws Exception {
		// TODO Auto-generated method stub
		session.selectOne(namespace + ".userlist");
	}
	
}
