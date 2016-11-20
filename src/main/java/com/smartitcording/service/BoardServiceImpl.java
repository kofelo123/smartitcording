package com.smartitcording.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.smartitcording.controller.board2.BoardDAO2;
import com.smartitcording.domain.BoardVO;
import com.smartitcording.domain.Criteria;
import com.smartitcording.domain.LikeVO;
import com.smartitcording.domain.SearchCriteria;
import com.smartitcording.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

  @Inject
  private BoardDAO dao;
  


  
  @Transactional
  @Override
  public void regist(BoardVO board) throws Exception {
  
    dao.create(board);
    
    String[] files = board.getFiles();
    
    if(files == null) { return; } 
    
    for (String fileName : files) {
      dao.addAttach(fileName);
    }   
  }
  
  //
//  @Override
//  public void regist(BoardVO board) throws Exception {
//    dao.create(board);
//  }

//  @Override
//  public BoardVO read(Integer bno) throws Exception {
//    return dao.read(bno);
//  }


  @Transactional(isolation=Isolation.READ_COMMITTED)
  @Override
  public BoardVO read(Integer bno) throws Exception {
    dao.updateViewCnt(bno);
    return dao.read(bno);
  }

  
//  @Override
//  public void modify(BoardVO board) throws Exception {
//    dao.update(board);
//  }
  
  @Transactional
  @Override
  public void modify(BoardVO board) throws Exception {
    dao.update(board);
    
    Integer bno = board.getBno();
    
    dao.deleteAttach(bno);
    
    String[] files = board.getFiles();
    
    if(files == null) { return; } 
    
    for (String fileName : files) {
      dao.replaceAttach(fileName, bno);
    }
  }
  

//  @Override
//  public void remove(Integer bno) throws Exception {
//    dao.delete(bno);
//  }
  
  
  @Transactional
  @Override
  public void remove(Integer bno) throws Exception {
    dao.deleteAttach(bno);
    dao.delete(bno);
  } 

  @Override
  public List<BoardVO> listAll() throws Exception {
    return dao.listAll();
  }

  @Override
  public List<BoardVO> listCriteria(Criteria cri) throws Exception {

    return dao.listCriteria(cri);
  }

  @Override
  public int listCountCriteria(Criteria cri) throws Exception {

    return dao.countPaging(cri);
  }

  @Override
  public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {

    return dao.listSearch(cri);
  }

  @Override
  public int listSearchCount(SearchCriteria cri) throws Exception {

    return dao.listSearchCount(cri);
  }
  

  @Override
  public List<String> getAttach(Integer bno) throws Exception {
    
    return dao.getAttach(bno);
  }

@Override
public void addlike(int bno) throws Exception {
	// TODO Auto-generated method stub
	 dao.addlike(bno);
}

@Override
public void sublike(int bno) throws Exception{
	dao.sublike(bno);
}

@Override
public LikeVO checklike(String uid, int bno) throws Exception {
	// TODO Auto-generated method stub
	return dao.checklike(uid,bno);
}

@Override
public void insertlikedefault(String uid, int bno) throws Exception {
	// TODO Auto-generated method stub
	dao.insertlikedefault(uid,bno);
}

@Override
public void updatelikey(String uid, int bno) throws Exception {
	// TODO Auto-generated method stub
	dao.updatelikey(uid,bno);
}

@Override
public void updateliken(String uid, int bno) throws Exception {
	// TODO Auto-generated method stub
	dao.updateliken(uid,bno);
}


}





