	package com.smartitcording.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.smartitcording.domain.BoardVO;
import com.smartitcording.domain.LikeVO;
import com.smartitcording.domain.PageMaker;
import com.smartitcording.domain.SearchCriteria;
import com.smartitcording.domain.UserVO;
import com.smartitcording.dto.LoginDTO;
import com.smartitcording.service.BoardService;
import com.smartitcording.service.MessageService;

@Controller
@RequestMapping("/sboard/*")
public class SearchBoardController {

  private static final Logger logger = LoggerFactory.getLogger(SearchBoardController.class);

  @Inject
  private BoardService service;
  


  @RequestMapping(value = "/list", method = RequestMethod.GET)
  public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

    logger.info(cri.toString());

    // model.addAttribute("list", service.listCriteria(cri));
    model.addAttribute("list", service.listSearchCriteria(cri));//페이지시작과 끝의 리스트정보를가져온다(if검색정보있을때는 정보에맞게)
//  SearchCritera cri = 검색타입,키워드 속성 가짐. // xml= listsearch - pageStart, pageNum +search에 맞는 모든 리스트데이터 받음 
    
    
    PageMaker pageMaker = new PageMaker();
    pageMaker.setCri(cri);

    // pageMaker.setTotalCount(service.listCountCriteria(cri));
    pageMaker.setTotalCount(service.listSearchCount(cri));

    model.addAttribute("pageMaker", pageMaker);
   
  }

  @RequestMapping(value = "/readPage", method = RequestMethod.GET)
  public void read(@RequestParam("bno") int bno, @ModelAttribute("cri") SearchCriteria cri, Model model,@RequestParam("uid") String uid)
      throws Exception {
	System.out.println("user테스트:"+uid);
    model.addAttribute(service.read(bno)); //model.addAttribute의 파라미터 하나있는거라서 view에서 전달시 boardVO가 된다.
    
    LikeVO likevo = service.checklike(uid,bno); //
    System.out.println("likevo테스트:"+likevo); // likevo.get~이 안된다 null 일경우 java nullpoint exception이된다. 그래서 그냥 likevo.tostring식으로 접근한다.
    if(likevo==null) // null일경우 넣기위한 로직이다( 왜냐하면 null 인상태로 model.addAttribute가 에러가 났었다. 모델에 객체내용없이 뷰에 전달이 안된다. 
    	service.insertlikedefault(uid, bno); // uid,bno만 넣어주기 떄문에 'n'상태가 된다.
    model.addAttribute(service.checklike(uid,bno));//추천여부체크
    
   
  
  }

  @RequestMapping(value = "/removePage", method = RequestMethod.POST)
  public String remove(@RequestParam("bno") int bno, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    service.remove(bno);

    rttr.addAttribute("page", cri.getPage());
    rttr.addAttribute("perPageNum", cri.getPerPageNum());
    rttr.addAttribute("searchType", cri.getSearchType());
    rttr.addAttribute("keyword", cri.getKeyword());

    rttr.addFlashAttribute("msg", "SUCCESS");

    return "redirect:/sboard/list";
  }

  @RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
  public void modifyPagingGET(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

    model.addAttribute(service.read(bno));
  }

  @RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
  public String modifyPagingPOST(BoardVO board, SearchCriteria cri, RedirectAttributes rttr) throws Exception {

    logger.info(cri.toString());
    service.modify(board);

    rttr.addAttribute("page", cri.getPage());
    rttr.addAttribute("perPageNum", cri.getPerPageNum());
    rttr.addAttribute("searchType", cri.getSearchType());
    rttr.addAttribute("keyword", cri.getKeyword());

    rttr.addFlashAttribute("msg", "SUCCESS");

    logger.info(rttr.toString());

    return "redirect:/sboard/list";
  }

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public void registGET() throws Exception {

    logger.info("regist get ...........");
  }

  @RequestMapping(value = "/register", method = RequestMethod.POST)
  public String registPOST(BoardVO board, RedirectAttributes rttr) throws Exception {

    logger.info("regist post ...........");
    logger.info(board.toString());

    service.regist(board);

    rttr.addFlashAttribute("msg", "SUCCESS");

    return "redirect:/sboard/list";
  }
  
  
  @RequestMapping("/getAttach/{bno}")
  @ResponseBody
  public List<String> getAttach(@PathVariable("bno")Integer bno)throws Exception{
    
    return service.getAttach(bno);
  }  
  

  @RequestMapping(value = "/calendar", method = RequestMethod.GET)
  public void calendar(Model model) throws Exception {

    logger.info("calendar get ...........");
    
    model.addAttribute("sboardNum", "calendar");
  }
  
  @RequestMapping(value = "/mainview", method = RequestMethod.GET)
  public void mainview(Model model) throws Exception {

    logger.info("mainview get ...........");
    model.addAttribute("sboardNum", "mainview");
  }
  


  @RequestMapping(value = "/chat", method = RequestMethod.GET)
  public void chat(UserVO user, Model model) throws Exception {

    logger.info("chat get ...........");
    System.out.println(user.getUid());
    model.addAttribute("user", user);
    
  }
  @RequestMapping(value = "/music", method = RequestMethod.GET)
  public void chat() throws Exception {

    logger.info("music get ...........");
   
  }
  
  @RequestMapping(value = "/readPage/like", method = RequestMethod.GET)
  public String like(@RequestParam("bno") int bno,@RequestParam("uid") String uid,BoardVO board) throws Exception {

    logger.info("like add ...........");
    System.out.println("bno 테스트:"+bno);
    System.out.println("uid 테스트"+uid);
    service.addlike(bno);
    service.updatelikey(uid,bno);
    return "redirect:/sboard/readPage?bno="+bno+"&uid="+uid; // 리턴이 되어도 uri 자체가 바뀌진 않는다 그래서 애초에 요청이었던 /sboard/readPage/like?bno=~~~ 이런식으로 된다. -> scm 플레이어에 의한 redirect 충돌에 의한것이었음.
    
  }
  @RequestMapping(value = "/readPage/dislike", method = RequestMethod.GET)
  public String dislike(@RequestParam("bno") int bno,@RequestParam("uid") String uid,BoardVO board) throws Exception {

    logger.info("like substraction ...........");
    System.out.println("bno 테스트:"+bno);
    System.out.println("uid 테스트"+uid);
    service.sublike(bno);	
    service.updateliken(uid,bno);
    return "redirect:/sboard/readPage?bno="+bno+"&uid="+uid; // 리턴이 되어도 uri 자체가 바뀌진 않는다 그래서 애초에 요청이었던 /sboard/readPage/like?bno=~~~ 이런식으로 된다. -> scm 플레이어에 의한 redirect 충돌에 의한것이었음.
    
  }
  
  
  @RequestMapping(value="/fbshare", method = RequestMethod.GET)
  public void fbshare(@RequestParam("bno") int bno)throws Exception{
	  
  }
  
  /*
   * @RequestMapping(value = "/readPage/like", method = RequestMethod.GET)
  public String like(@RequestParam("bno") int bno,BoardVO board) throws Exception {

    logger.info("like add ...........");
    System.out.println("bno 테스트:"+bno);
   
    service.addlike(bno);
    return "redirect:/sboard/readPage?bno="+bno; // 리턴이 되어도 uri 자체가 바뀌진 않는다 그래서 애초에 요청이었던 /sboard/readPage/like?bno=~~~ 이런식으로 된다. -> scm 플레이어에 의한 redirect 충돌에 의한것이었음.
    
  }
   * 
   */

  /*return "redirect:/sboard/mail/listmail?uid="+message.getSender();*/
  
  
  
  
  // @RequestMapping(value = "/list", method = RequestMethod.GET)
  // public void listPage(@ModelAttribute("cri") SearchCriteria cri,
  // Model model) throws Exception {
  //
  // logger.info(cri.toString());
  //
  // model.addAttribute("list", service.listCriteria(cri));
  //
  // PageMaker pageMaker = new PageMaker();
  // pageMaker.setCri(cri);
  //
  // pageMaker.setTotalCount(service.listCountCriteria(cri));
  //
  // model.addAttribute("pageMaker", pageMaker);
  // }
}
