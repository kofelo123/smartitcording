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
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery 2.1.4 -->
    <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
    
     
     <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
    
    
    
     <link rel="icon" type="image/png"  href="/resources/bootstrap/image/favicon.ico"/>
 	 

 	 
  </head>
  

      
  <body class="skin-blue-light sidebar-mini">

  
    <div class="wrapper">
      
      <header class="main-header">
        <!-- Logo -->
        <a href="/sboard/list" class="logo">
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
                            <img src="/resources/dist/img/user7-128x128.jpg" class="img-circle" alt="User Image"/>
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
                            <img src="/resources/dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
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
                            <img src="/resources/dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
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
                            <img src="/resources/dist/img/user3-128x128.jpg" class="img-circle" alt="user image"/>
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
                            <img src="/resources/dist/img/user4-128x128.jpg" class="img-circle" alt="user image"/>
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
                  <img src="/resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs">허정원</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                    <p>
                      허정원 - 웹 개발자
                      <small>Member since 2010</small>
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
              <img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>&nbsp;&nbsp;${login.uname }</p>

              <a href="/user/logout"><i class="fa fa-circle text-success"></i> 로그인상태</a>
            </div>
          </div>
          </c:if>
          
          <c:if test="${empty login }">
             <div class="user-panel">
            <div class="pull-left image">
              <img src="/resources/dist/img/notlogin.png" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>로그인 해주세요</p>

              <a href="/user/login"><i class="fa fa-circle text-fail"></i> 비로그인상태</a>
            </div>
          </div>
          </c:if>
      <!--     <div class="user-panel">
            <div class="pull-left image">
              <img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
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
            <li class="header"> <%@include file="../include/naverparsing.jsp" %></li>
            <li class="treeview">
              <a href="/sboard/list">
                <i class="fa fa-dashboard"></i> <span>자유게시판</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>개발질문</span>
                <span class="label label-primary pull-right">4</span>
              </a>
            
            </li>
            <li>
              <a href="#">
                <i class="fa fa-th"></i> <span>개발팁공유</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>불편사항</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
             
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>스터디해요</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
             
            </li>
            <li class="treeview active">
              <a href="#">
                <i class="fa fa-edit"></i> <span>취업고민</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
             
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>책나눔</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              
            </li>
            <li>
              <a href="/sboard/calendar">
                <i class="fa fa-calendar"></i> <span>일정</span>
                <small class="label pull-right bg-red">3</small>
              </a>
            </li>
            <li>
              <a href="#"  onClick="window.open('/sboard/mail/listmail?uid=${login.uid }', '', 'width=475, height=490,left=1000, top=100'); return false;"> <!-- 파라미터로 uid를 넘겨줘야 리스트에 서 uid에 맞는 로직을 불러올수 있을거같아서 시도해봤는데 가능한것 같다.  -->
                <i class="fa fa-envelope"></i> <span>쪽지함</span>
                <small class="label pull-right bg-yellow">12</small>
              </a>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-folder"></i> <span>북마크</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-share"></i> <span>익명게시판</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
          
            </li>
            <li><a href="#"><i class="fa fa-book"></i> <span>베스트</span></a></li>
            <li class="header">링크</li>
            <li><a href="https://github.com/kofelo123/smartitcording"><i class="fa fa-circle-o text-red"></i> <span>깃허브</span></a></li>
            <li><a href="#" onClick="window.open('/sboard/chat', '', 'width=475, height=310,left=1000, top=100'); return false;"><i class="fa fa-circle-o text-yellow"></i> <span>채팅</span></a></li>
            <li><a href="#" onClick="window.open('/sboard/music', '', 'width=600, height=400,left=900, top=350'); return false;"><i class="fa fa-circle-o text-aqua"></i> <span>뮤직플레이어</span></a></li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            자유게시판
            <small>Preview   </small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">자유게시판</a></li>
            <li class="active">임시</li>
          </ol>
        </section>
        
       
<!-- SCM Music Player http://scmplayer.net -->
<script type="text/javascript" src="http://scmplayer.net/script.js" 
data-config="{'skin':'http://static.tumblr.com/nd9hip4/HaJmqlv6r/askin.css','volume':50,'autoplay':true,'shuffle':false,'repeat':1,'placement':'bottom','showplaylist':false,'playlist':[{'title': '내 옆에 그대인 걸- 다비치','url':'https://youtu.be/7TBIPd0zt1I'} ,{'title':'TT - %uD2B8%uC640%uC774%uC2A4','url':'https://youtu.be/ePpPVE-GGJw'},{'title':'%uB0A8%uC544%uC788%uC5B4 - %uB85C%uAF2C','url':'https://youtu.be/YolFoPo55Ac'},{'title':'11 : 11 - %uD0DC%uC5F0','url':'https://youtu.be/ulr0muQKjk0'},{'title':'IOI - %uB108%uBB34%uB108%uBB34%uB108%uBB34','url':'https://youtu.be/l1hxg1rY17I'},{'title':'%uC6B0%uC8FC%uB97C %uC904%uAC8C  - %uBCFC%uBE68%uAC04%uC0AC%uCD98%uAE30','url':'https://youtu.be/9U8uA702xrE'},{'title': '불장난 - BLACKPINK','url':'https://youtu.be/M-1vTs_uFRI'},{'title': '숨 - 박효신','url':'https://youtu.be/oBKpJiVEcnU'} ,{'title': '이 소설의 끝을 다시 써보려 해 - 한동근','url':'https://youtu.be/-XzHgS77QOI'} ,{'title': '이별을 배웠어  - 슬옹&조이','url':'https://youtu.be/ITZeTl5SjBo'} ,{'title': '어떻게 지내  - 크러쉬','url':'https://youtu.be/Jpb6m8jqa1o'} , {'title': '그대라는 사치 - 한동근','url':'https://youtu.be/07OEr-ptzdA'} ,{'title': '나만 안되는 연애 - 볼빨간사춘기','url':'https://youtu.be/airQW5Rp7Gc'}]}" ></script>

<!--{'title': '나만 안되는 연애 - 볼빨간사춘기','url':'https://youtu.be/airQW5Rp7Gc'} ,-->
<!-- SCM Music Player script end -->
