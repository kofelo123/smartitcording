package com.smartitcording.service;

import java.util.List;

import com.smartitcording.domain.BoardVO;
import com.smartitcording.domain.MessageVO;
import com.smartitcording.domain.SearchCriteria;

public interface MessageService {

  public void addMessage(MessageVO vo) throws Exception;

  public MessageVO readMessage(String uid, Integer mno) throws Exception;
  
  
  //쪽지함 관련 로직
  public List<MessageVO> listmail(MessageVO vo)throws Exception;
  
  public List<MessageVO> listSearchCriteria(SearchCriteria cri,String targetid) 
	      throws Exception;
  
  public int listSearchCount(SearchCriteria cri) throws Exception;
  
  
  public MessageVO readMessage(Integer mid) throws Exception;
  
  
  public void regist(MessageVO message) throws Exception;
}
