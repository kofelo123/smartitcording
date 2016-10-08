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

    if (vo == null) {
      return;
    }

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