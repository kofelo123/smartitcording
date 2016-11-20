package com.smartitcording.service;

import java.util.List;

import com.smartitcording.domain.BoardVO;
import com.smartitcording.domain.Criteria;
import com.smartitcording.domain.LikeVO;
import com.smartitcording.domain.SearchCriteria;

public interface BoardService2 {

  public void regist(BoardVO board) throws Exception;

  public BoardVO read(Integer bno) throws Exception;

  public void modify(BoardVO board) throws Exception;

  public void remove(Integer bno) throws Exception;

  public List<BoardVO> listAll() throws Exception;

  public List<BoardVO> listCriteria(Criteria cri) throws Exception;

  public int listCountCriteria(Criteria cri) throws Exception;

  public List<BoardVO> listSearchCriteria(SearchCriteria cri) 
      throws Exception;

  public int listSearchCount(SearchCriteria cri) throws Exception;
  
  
  public List<String> getAttach(Integer bno)throws Exception;
  
  public void addlike(int bno)throws Exception;
  
  public void sublike(int bno)throws Exception;
  
  public LikeVO checklike(String uid,int bno)throws Exception;
  
  public void insertlikedefault(String uid,int bno)throws Exception;
  
  public void updatelikey(String uid,int bno)throws Exception;

  
  
  public void updateliken(String uid,int bno)throws Exception;
  
  
  
}
