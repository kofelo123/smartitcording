

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <%@ include file="../include/analytics.jsp"%>	
    <meta charset="UTF-8">
    <title>회원가입</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="/smartit/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/smartit/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="/smartit/resources/plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />
     <script src="/smartit/resources/js/member.js"></script>
	
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
  </head>
  <body class="login-page">
    <div class="login-box2">
      <div class="login-logo">
        <a href="/smartit/sboard/list"><b>회원가입</b></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg"></p>


<!-- <div id='expression' style="padding-bottom:20px">
<b>회원 가입시 입력하신 이메일 주소를 입력하시면,<br></b>
<b>아이디 및 비밀번호 변경 링크를 보내드립니다.<br></b>
</div>
  <div class="form-group has-feedback">
    <input type="text" name="email3" class="form-control" placeholder="이메일을 입력해주세요"/>
    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
  </div> -->
    <div class="joinForm" >
  
    <form id="join" action="/smartit/user/joinPost" method="post" name="formm">

      <fieldset>
        <legend>기본정보</legend><br>
        <label>아이디</label>
        <input type="text"      name="uid"        size="15" style="margin-left:10px"  >
        <input type="hidden"    name="reid">
        <input type="button"    value="중복 체크"   onclick="idcheck()" style="margin-left:100px"><br>
        <label>비밀번호</label> 
        <input type="password"  name="upw" style="margin-left:30px"><br>
        <label>비밀번호 확인</label> 
        <input type="password"  name="upwCheck"><br>
        <label>이름</label>
        <input type="text"      name="uname" style="margin-left:20px"><br>
        <label>이메일</label>
        <input type="text"      name="email" size="12" style="margin-left:7px">&nbsp;@ <input type="text"      name="email2" size="12">
        	<select name="company" onclick="mailcheck()" style="margin-left:10px">
   				<option value="직접입력" selected="selected">직접입력</option>
    			<option value="naver.com">네이버</option>
    			<option value="daum.net" >다음</option>
    			<option value="nate.com" >네이트</option>
    			<option value="hotmail.com" >핫메일</option>
    			<option value="yahoo.com" >야후</option>
   				<option value="empas.com">엠파스</option>
   				<option value="dreamwiz.com">드림위즈</option>
   				<option value="gmail.com">지메일</option>
			</select>
        <br><br><br>
        
      </fieldset>
      <fieldset>
        <legend>추가정보</legend><br>
        <label>우편번호</label> 
        <input type="text"       name="zipNum"   size="10" placeholder="-------------->">      
        <input type="button"     value="우편 번호"  onclick="post_zip()" style="margin-left:10px"><br>
        <label>주소</label> 
        <input type="text"        name="addr1"   size="30" style="margin-left:30px"><br>
        <label>상세주소</label>
        <input type="text"        name="addr2"   size="40"  > <br>
        <label>휴대전화</label> 
        <select name="phone">
   				<option value="010" selected="selected">010</option>
    			<option value="011">011</option>
    			<option value="016" >016</option>
    			<option value="017" >017</option>
    			<option value="018" >018</option>
    			<option value="019" >019</option>
			</select>
        -&nbsp;<input  type="text"       name="phone2" size="6">&nbsp;-&nbsp;<input  type="text"  name="phone3" size="6"><br><br>
      </fieldset>
      <div class="clear"></div>
    
 

        <input type="button"    value="회원가입"    onclick="go_save()" > 
        <input type="reset"      value="취소" style="margin-left:10px"   >
    
          
        
        
   
   
   
    </form>
   </article>
  </div>
 <!--  <div class="form-group has-feedback">
    <input type="password" name="upw" class="form-control" placeholder=""/>
    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div> -->
  
  

  </div>
  </div>
  
</form>


        
		
  </body>
</html>