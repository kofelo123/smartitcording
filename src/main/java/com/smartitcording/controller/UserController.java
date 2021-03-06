package com.smartitcording.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.smartitcording.domain.AddressVO;
import com.smartitcording.domain.BoardVO;
import com.smartitcording.domain.UserVO;
import com.smartitcording.dto.LoginDTO;
import com.smartitcording.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private static Logger logger =  LoggerFactory.getLogger(UserController.class);

  @Inject
  private UserService service;

  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public void loginGET(@ModelAttribute("dto") LoginDTO dto) {

  }

  @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
  public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {

    UserVO vo = service.login(dto);

    /*if (vo == null) {
      return;
    }*/

    model.addAttribute("userVO", vo);

    if (dto.isUseCookie()) {

      int amount = 60 * 60 * 24 * 7;

      Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

      service.keepLogin(vo.getUid(), session.getId(), sessionLimit);
    }

  }

  @RequestMapping(value = "/logout", method = RequestMethod.GET)
  public String logout(HttpServletRequest request, 
      HttpServletResponse response, HttpSession session) throws Exception {

	  logger.info("logout.................................1");

	  Object obj = session.getAttribute("login");

	  if (obj != null) {
	  UserVO vo = (UserVO) obj;
	  session.removeAttribute("login");
	  session.invalidate();

	  logger.info("logout.................................3");
	  Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");


	  if (loginCookie != null) {
	  logger.info("logout.................................4");
	  loginCookie.setPath("/");
	  loginCookie.setMaxAge(0);
	  response.addCookie(loginCookie);
	  service.keepLogin(vo.getUid(), session.getId(), new Date());
	  }
	  } 

	  return "user/logout";
  }
  //회원가입 만들것.
  @RequestMapping(value = "/join", method = RequestMethod.GET)
  public void join(@ModelAttribute("dto") UserVO dto) {
	  
  }
  
  @RequestMapping(value = "joinPost", method = RequestMethod.POST)
  public String joinPost(UserVO user, RedirectAttributes rttr) throws Exception{
	  
	  logger.info("joinPost post ...........");
	  
	  service.joinPost(user);
	  
	  rttr.addFlashAttribute("msg", "SUCCESS");
	  
	  return "redirect:/sboard/list";
  }
  
  @RequestMapping(value = "/idcheck", method = RequestMethod.GET )
  public void id_check(UserVO user,Model model) throws Exception{
	 int answer=0;
	  UserVO user2 = service.id_checkPost(user);/* */
	  if(user2 == null){
		 System.out.println(user2);
		 answer=1;
	  }else{
		  answer=-1;
	  }
	  
	  model.addAttribute("user", user);
	  model.addAttribute("answer",answer);
	  System.out.println(user.getUid());
	  
  }
  
  @RequestMapping(value ="/findZipNum" , method=RequestMethod.GET)
  public void findZipNum(Model model,AddressVO address) throws Exception{
	  
	 
  }

  @RequestMapping(value ="/findZipNum" , method=RequestMethod.POST)
  public void findZipNumPost(Model model,AddressVO address) throws Exception{
	  
	  System.out.println("findzipnum ...");
	  
	  
	  model.addAttribute("addressList",service.findzipnum(address));
  }
  
  @RequestMapping(value = "/idfind", method = RequestMethod.GET)
  public void idfind() {

  }
  
  @RequestMapping(value="/idfindmail", method = RequestMethod.GET)
	public void idfindmail(UserVO user,HttpServletRequest request, ModelMap mo) throws Exception{
  
	  service.idfindmail(request,mo,user);
  }
  
  
 @RequestMapping(value="/mailhashcheck", method = RequestMethod.GET)
  public void mailhashcheck(UserVO user,Model model) throws Exception{
	  System.out.println("콘솔테스트");
	  System.out.println(user.getEncrypthash());
	  System.out.println(user.getUid());
	  
	  UserVO user2 =service.hashbyid(user);
	  if(user2.getUid()!=null)
		  model.addAttribute("user", user2);
	  
	  //로직을 어떻게 할지..
	  //1.해쉬코드 검사하는 로직(아이디로 찾아야 될지 동적 sql을 써야할지?) 2.view에 전달 해쉬코드 일치하면 비밀번호 변경폼, 일치x시에 실패 메세지
	  //3.비밀번호 변경하는 로직->(update) 4.처리결과 처리 (간단하게 alert해도 될듯) -> 메인페이지로 redirect
	  
	  
	  
	  
	  
  }
  @RequestMapping(value="/modifypw" ,method=RequestMethod.POST)
 public String modifypw(UserVO user)throws Exception{
	  System.out.println("콘솔파라미터테스트");
	  System.out.println(user.getUid());//input type=hidden으로 가져옴
	  System.out.println(user.getUpw());
	  
	  service.modifypw(user);
	  
	  
	  return "redirect:/user/login";	/* */
	 
 }
  
  
  @RequestMapping(value="/back", method = RequestMethod.GET)
	public void back() throws Exception{
  
	
  }
  
  

}


/*  @RequestMapping(value ="/idcheck", method = RequestMethod.POST) post 굳이 필요없을것 같다.
public void id_checkPost(@ModelAttribute("user") UserVO user) throws Exception{
	  
	  int result=-1;
	  
	  logger.info("id_search......");
	  	  
	  user=
	 service.id_checkPost(user);
	  if(user==null){
		  result=-1;
	  }else{
		  result =1;
	  }
	  
}*/