package com.smartitcording.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smartitcording.domain.BoardVO;
import com.smartitcording.domain.MessageVO;
import com.smartitcording.domain.SearchCriteria;
import com.smartitcording.persistence.MessageDAO;
import com.smartitcording.persistence.PointDAO;

@Service
public class MessageServiceImpl implements MessageService {

  @Inject
  private MessageDAO messageDAO;

  @Inject
  private PointDAO pointDAO;


  //@Transactional
  @Override
  public void addMessage(MessageVO vo) throws Exception {

    messageDAO.create(vo);
    pointDAO.updatePoint(vo.getSender(), 10);
  }

  @Override
  public MessageVO readMessage(String uid, Integer mid) throws Exception {

    messageDAO.updateState(mid);

    pointDAO.updatePoint(uid, 5);

    return messageDAO.readMessage(mid);
  }

@Override
public List<MessageVO> listmail(MessageVO vo) throws Exception {
	// TODO Auto-generated method stub
	return messageDAO.listmail(vo);
}

@Override
public List<MessageVO> listSearchCriteria(SearchCriteria cri,String targetid) throws Exception {
	// TODO Auto-generated method stub
	 return messageDAO.listSearch(cri,targetid);
}

@Override
public int listSearchCount(SearchCriteria cri) throws Exception {
	// TODO Auto-generated method stub
	 return messageDAO.listSearchCount(cri);
}

@Override
public MessageVO readMessage(Integer mid) throws Exception {
	// TODO Auto-generated method stub
	messageDAO.updateReadCheck(mid);
	return messageDAO.readMessage(mid);
}

@Override
public void regist(MessageVO message) throws Exception {
	// TODO Auto-generated method stub
	messageDAO.create(message);
}
}
