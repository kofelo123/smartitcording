package com.smartitcording.controller.board5;

import java.util.List;

import com.smartitcording.domain.Criteria;
import com.smartitcording.domain.ReplyVO;

public interface ReplyService5 {

  public void addReply(ReplyVO vo) throws Exception;

  public List<ReplyVO> listReply(Integer bno) throws Exception;

  public void modifyReply(ReplyVO vo) throws Exception;

  public void removeReply(Integer rno) throws Exception;

  public List<ReplyVO> listReplyPage(Integer bno, Criteria cri) 
      throws Exception;

  public int count(Integer bno) throws Exception;
}
