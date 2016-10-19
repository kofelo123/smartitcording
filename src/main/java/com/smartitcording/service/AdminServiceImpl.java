package com.smartitcording.service;

import org.springframework.stereotype.Service;

import com.smartitcording.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	private AdminDAO dao;

	@Override
	public void userlist() throws Exception {
		// TODO Auto-generated method stub
		dao.userlist();
	}

}
