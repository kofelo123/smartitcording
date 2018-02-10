<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
  <head>

     
    <meta charset="UTF-8">
    <title>스마트IT코딩단</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="/smartit/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/smartit/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="/smartit/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery 2.1.4 -->
    <script src="/smartit/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    
     
     <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
  <!-- thearc 프로젝트하면서 수많은 에러테스트 과정에서 댓글 modal 수정페이지 멈춤 현상의 원인으로 찾은 아래 js 인데 일단 주석처리한다. 원래는 readPage에있는건데 header에도 있길래 이것도..  -->
  <!-- 다시 헤더에있는 녀석은 살린다.(modify에서 에디터가 꺠지는현상..)  --> 
  <!-- 다시 주석처리한다(modal에서 수정처리후 어둠현상)  -->
  <!-- <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> --> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
    
    
    
     <link rel="icon" type="image/png"  href="/smartit/resources/bootstrap/image/favicon.ico"/>
 	 
<meta property="og:url"                content="http://www.smartitcording.com/smartit/sboard/readPage?bno=${boardVO.bno }&uid=" />
<meta property="og:type"               content="article" />
<meta property="og:title"              content="${boardVO.title }" />
<meta property="og:description"        content="${boardVO.content }" />
<meta property="og:image"              content="https://www.48hourslogo.com/48hourslogo_data/2016/09/19/54184_1474239812.png" />
   
   
   
  </head>
  

      
  <body class="skin-blue-light sidebar-mini">

  
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="/smartit/sboard/list" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Smart</b> <b>IT</b> <b></b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar">   </span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          
         
          <div class="navbar-custom-menu">
          
            <ul class="nav navbar-nav">
           
              <!-- Messages: style can be found in dropdown.less-->
          
  
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- start message -->
                        <a href="#">
                          <div class="pull-left">
                            <img src="/smartit/resources/dist/img/user7-128x128.jpg" class="img-circle" alt="User Image"/>
                          </div>
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li><!-- end message -->
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="/smartit/resources/dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            AdminLTE Design Team
                            <small><i class="fa fa-clock-o"></i> 2 hours</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="/smartit/resources/dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Developers
                            <small><i class="fa fa-clock-o"></i> Today</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="/smartit/resources/dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Sales Department
                            <small><i class="fa fa-clock-o"></i> Yesterday</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="/smartit/resources/dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
                          </div>
                          <h4>
                            Reviewers
                            <small><i class="fa fa-clock-o"></i> 2 days</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 new members joined
                        </a>
                      </li>

                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> You changed your username
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger">9</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 9 tasks</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Design some buttons
                            <small class="pull-right">20%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">20% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Create a nice theme
                            <small class="pull-right">40%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">40% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Some task I need to do
                            <small class="pull-right">60%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">60% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Make beautiful transitions
                            <small class="pull-right">80%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">80% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">View all tasks</a>
                  </li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
             
         	 <c:if test="${not empty login }">
                  <img src="/smartit/resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">${login.uid }</span>
             </c:if>
             
             <c:if test="${empty login }">
              <img src="/smartit/resources/dist/img/notlogin.jpg" class="user-image" alt="User Image" />
              <span class="hidden-xs">비로그인</span>
              </c:if>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="/smartit/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                    <p>
                      허정원 - 웹 개발자
                      <small>Member since 2016</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          
          <!-- 현재작업  -->
          
          <c:if test="${not empty login }">
             <div class="user-panel">  <!-- user패널좀 수정해야할듯  -->
            <div class="pull-left image">
              <img src="/smartit/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>&nbsp;&nbsp;${login.uid }</p>

              <a href="/smartit/user/logout"><i class="fa fa-circle text-success"></i> 로그인상태 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
              <a href="/smartit/user/logout" style="color:#64a3f3;font-size:10px"><i class="fa fa-sign-out" style="color:#64a3f3;font-size:14px;"></i>로그아웃</a>
            </div>
          </div>
          </c:if>
          
          <c:if test="${empty login }">
             <div class="user-panel">
            <div class="pull-left image">
              <img src="/smartit/resources/dist/img/notlogin.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
            <p>  로그인 해주세요 </p>

              <a href="/smartit/user/login"><i class="fa fa-circle text-fail"></i> 비로그인상태 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
              <a href="/smartit/user/login" style="color:#64a3f3;font-size:10px"><i class="fa fa-sign-out" style="color:#64a3f3;font-size:14px;"></i>로그인</a>
            </div>
          </div>
          </c:if>
      <!--     <div class="user-panel">
            <div class="pull-left image">
              <img src="/smartit/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>허정원</p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div> -->
          
          
          
          
          <!-- search form -->
          <form action="http://www.google.com/search" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="검색어를 입력하세요"/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header"> <%-- <%@include file="../include/naverparsing.jsp" %> --%></li>
            
            
               <li class="header" style="background-color:#ddf5f8;"></li>
               
                <c:if test="${sboardNum=='6'}">
          <li class="treeview active">
             </c:if>
              <c:if test="${sboardNum!='6'}">
     		 <li class="treeview">
             </c:if>
              <a href="/smartit/sboard6/list">
                <i class="fa fa-edit"></i> <span>공지사항</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
             
            </li>
            
            
               <c:if test="${sboardNum==null}">
          <li class="treeview active">
             </c:if>
              <c:if test="${sboardNum!=null}">
     		 <li class="treeview">
             </c:if>
              <a href="/smartit/sboard/list">
                <i class="fa fa-dashboard"></i> <span>자유게시판</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              
            </li>
           
             
                <c:if test="${sboardNum=='2'}">
          <li class="treeview active">
             </c:if>
              <c:if test="${sboardNum!='2'}">
     		 <li class="treeview">
             </c:if>
              <a href="/smartit/sboard2/list">
                <i class="fa fa-files-o"></i>
                <span>개발질문</span>
                <!-- <span class="label label-primary pull-right">4</span> --><i class="fa fa-angle-left pull-right"></i>
              </a>
            
            </li>
            
            
                <c:if test="${sboardNum=='3'}">
          <li class="treeview active">
             </c:if>
              <c:if test="${sboardNum!='3'}">
     		 <li class="treeview">
             </c:if>
              <a href="/smartit/sboard3/list">
                <i class="fa fa-th"></i> <span>개발팁공유</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            
            
           
                <c:if test="${sboardNum=='4'}">
          <li class="treeview active">
             </c:if>
              <c:if test="${sboardNum!='4'}">
     		 <li class="treeview">
             </c:if>
              <a href="/smartit/sboard4/list">
                <i class="fa fa-pie-chart"></i>
                <span>건의사항</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
             
            </li>
            
            
            
                <c:if test="${sboardNum=='5'}">
          <li class="treeview active">
             </c:if>
              <c:if test="${sboardNum!='5'}">
     		 <li class="treeview">
             </c:if>
              <a href="/smartit/sboard5/list">
                <i class="fa fa-laptop"></i>
                <span>스터디해요</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
             
            </li>
            
            
            
               
            
            
            
                <c:if test="${sboardNum=='7'}">
          <li class="treeview active">
             </c:if>
              <c:if test="${sboardNum!='7'}">
     		 <li class="treeview">
             </c:if>
              <a href="/smartit/sboard7/list">
                <i class="fa fa-table"></i> <span>프로젝트</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              
            </li>
        
      <!--       <li><a href="#"><i class="fa fa-book" ></i> <span>베스트</span></a></li> -->
            <li class="header" style="background-color:#ddf5f8;"></li>
             <li class="header" style="background-color:#ddf5f8;"></li>
              <li class="header" style="background-color:#ddf5f8;"></li>
              
              <li>
              <a href="/smartit/sboard/calendar">
                <i class="fa fa-calendar"></i> <span>학과일정</span>
                <small class="label pull-right bg-red">3</small>
              </a>
            </li>
            <li>
              <a href="#"  onClick="window.open('/smartit/sboard/mail/listmail?uid=${login.uid }', '', 'width=475, height=490,left=1000, top=100'); return false;"> <!-- 파라미터로 uid를 넘겨줘야 리스트에 서 uid에 맞는 로직을 불러올수 있을거같아서 시도해봤는데 가능한것 같다.  -->
                <i class="fa fa-envelope"></i> <span>쪽지함</span>
               <!--  <small class="label pull-right bg-yellow">12</small> -->
              </a>
            </li>
          <!--   <li class="treeview">
              <a href="#">
                <i class="fa fa-folder"></i> <span>북마크</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              
            </li> -->
              <li class="header" style="background-color:#ddf5f8;"></li>
            <li><a href="https://github.com/kofelo123/smartitcording" target="_blank"><i class="fa fa-github "></i> <span>깃허브</span></a></li>
            <li><a href="#" onClick="window.open('/smartit/sboard/chat', '', 'width=475, height=310,left=1000, top=100'); return false;"><i class="fa fa-circle-o text-yellow"></i> <span>채팅</span></a></li>
            <li><a href="#" onClick="window.open('/smartit/sboard/music', '', 'width=600, height=400,left=900, top=350'); return false;"><i class="glyphicon glyphicon-music" style="color:#25c1ef"></i> <span>뮤직플레이어</span></a></li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

     

 <!-- 게시판 윗부분에 게시판이름   -->
   <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
       		<c:if test="${sboardNum==null}">
       
          <h1>
         	   자유게시판
            <small>자유롭게 작성해주세요  </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">자유게시판</a></li>
           <!--  <li class="active">기본</li> -->
          </ol>
          </c:if>
          <c:if test="${sboardNum=='2'}">
           <h1>
         	   개발질문
            <small> 개발중 궁금한 점에 대해 질문해보세요   </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">개발질문</a></li>
            <!-- <li class="active">기본</li> -->
          </ol>
          </c:if>
           <c:if test="${sboardNum=='3'}">
           <h1>
         	  팁공유
            <small> 좋은 정보와 지식을 공유해요   </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">팁공유</a></li>
            <!-- <li class="active">기본</li> -->
          </ol>
          </c:if>
            <c:if test="${sboardNum=='4'}">
           <h1>
         	건의사항
            <small> 개선되었으면 하는 사항을 토의해 봅시다. </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">건의사항</a></li>
            <!-- <li class="active">기본</li> -->
          </ol>
          </c:if>
            <c:if test="${sboardNum=='5'}">
           <h1>
         	 스터디해요
            <small> 더 이상 혼자 하지마세요. 함께 배워봐요   </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">스터디</a></li>
            <!-- <li class="active">기본</li> -->
          </ol>
          </c:if>
            <c:if test="${sboardNum=='6'}">
           <h1>
         	  공지사항
            <small> 공지사항 입니다. 필독해주세요 </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">공지</a></li>
            <!-- <li class="active">기본</li> -->
          </ol>
          </c:if>
            <c:if test="${sboardNum=='7'}">
           <h1>
         	 프로젝트
            <small> 만들어진 작품들을 구경하는 곳입니다.   </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">프로젝트</a></li>
            <!-- <li class="active">기본</li> -->
          </ol>
          </c:if>
          
            <c:if test="${sboardNum=='calendar'}">
           <h1>
         	  학과일정
            <small> 학과 스케줄 입니다.</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">일정</a></li>
            <!-- <li class="active">기본</li> -->
          </ol>
          </c:if>
          
            <c:if test="${sboardNum=='mainview'}">
           <h1>
         	 주요게시판
            <small> 주요게시판의 최신내용입니다. </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">공지</a></li>
            <!-- <li class="active">기본</li> -->
          </ol>
          </c:if>
          
          
        </section>
        
        