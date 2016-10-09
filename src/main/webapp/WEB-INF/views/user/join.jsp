<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>회원가입</title>
  
  <script type="text/javascript" src="/resources/js/member.js"></script>
  <link href="/resources/bootstrap/css/jeongwon.css" rel="stylesheet" type="text/css" />
  </head>
  <div class="joinForm">
  
  <article>
  <hr>
    <center><h2>회원가입</h2></center>
    <form id="join" action="/user/joinPost" method="post" name="formm">

      <fieldset>
        <legend>기본정보</legend><br>
        <label>아이디</label>
        <input type="text"      name="uid"        size="12"style="margin-left:10px"  >
        <input type="hidden"    name="reid">
        <input type="button"    value="중복 체크"  class="dup" onclick="idcheck()"><br>
        <label>비밀번호</label> 
        <input type="password"  name="upw" style="margin-left:45px"><br>
        <label>비밀번호 확인</label> 
        <input type="password"  name="upwCheck"><br>
        <label>이름</label>
        <input type="text"      name="uname" style="margin-left:20px"><br>
        <label>이메일</label>
        <input type="text"      name="email" size="12">&nbsp;@ <input type="text"      name="email2" size="12">
        	<select name="company" onclick="mailcheck()">
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
        <input type="text"       name="zipNum"   size="10" placeholder="눌러주세요 -->">      
        <input type="button"     value="우편 번호" class="dup" onclick="post_zip()"><br>
        <label>주소</label> 
        <input type="text"        name="addr1"   size="30" style="margin-left:40px"><br>
        <label>상세주소</label>
        <input type="text"        name="addr2"   size="40"  > <br>
        <label>휴대전화</label> 
        <select name="phone1">
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
      <div id="buttons">
        <input type="button"    value="회원가입"   class="submit" onclick="go_save()" style="margin-left:20px"> 
        <input type="reset"      value="취소"     class="cancel" style="margin-left:10px">
        
      </div>
    </form>
   </article>
  </div>
</html>