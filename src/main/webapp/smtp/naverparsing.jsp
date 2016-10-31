<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="com.smartitcording.util.NaverTest" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<!-- 롤링 소스 시작  -->
  <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Parallax Content Slider with CSS3 and jQuery</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Parallax Content Slider with CSS3 and jQuery" />
        <meta name="keywords" content="slider, animations, parallax, delayed, easing, jquery, css3, kendo UI" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="/resources/rolling/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/resources/rolling/css/style2.css" />
		<script type="text/javascript" src="/resources/rolling/js/modernizr.custom.28468.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Economica:700,400italic' rel='stylesheet' type='text/css'>
		<noscript>
			<link rel="stylesheet" type="text/css" href="/resources/rolling/css/nojs.css" />
		</noscript>
	  <!-- 롤링 소스  끝 -->

<% 
NaverTest navertest = new NaverTest();
Map<Integer,String> map = navertest.naver();

Iterator<Integer> keys2 = map.keySet().iterator();


while(keys2.hasNext()){
	  Integer key = keys2.next();
	  System.out.print("key: "+key);
	
	  System.out.print(", value: "+map.get(key)+'\n');
	 
}
%>

<div class="container">
			<!-- Codrops top bar -->
            
			<div id="da-slider" class="da-slider">
			
				<div class="da-slide">
					<a href="<%=map.get(11) %>" onClick="window.open(this.href, ''); return false;"> <h2>1. &nbsp;<%=map.get(1) %></h2></a>			
				</div>
				<div class="da-slide">
					<a href="<%=map.get(12) %>"onClick="window.open(this.href, ''); return false;"> <h2>2. &nbsp;<%=map.get(2) %></h2>	</a>				
				</div>
				<div class="da-slide">
					<a href="<%=map.get(13) %>"onClick="window.open(this.href, ''); return false;"> <h2>3. &nbsp;<%=map.get(3) %></h2>	</a>					
				</div>
				<div class="da-slide">
					<a href="<%=map.get(14) %>"onClick="window.open(this.href, ''); return false;"> <h2>4. &nbsp;<%=map.get(4) %></h2>	</a>					
				</div>
				<div class="da-slide">
					<a href="<%=map.get(15) %>"onClick="window.open(this.href, ''); return false;"> <h2>5. &nbsp;<%=map.get(5) %></h2>	</a>					
				</div>
				<div class="da-slide">
					<a href="<%=map.get(16) %>"onClick="window.open(this.href, ''); return false;"> <h2>6. &nbsp;<%=map.get(6) %></h2>	</a>						
				</div>
				<div class="da-slide">
					<a href="<%=map.get(17) %>"onClick="window.open(this.href, ''); return false;"> <h2>7. &nbsp;<%=map.get(7) %></h2>	</a>					
				</div>
				<div class="da-slide">
					<a href="<%=map.get(18) %>"onClick="window.open(this.href, ''); return false;"> <h2>8. &nbsp;<%=map.get(8) %></h2>	</a>					
				</div>
				<div class="da-slide">
					<a href="<%=map.get(19) %>"onClick="window.open(this.href, ''); return false;"> <h2>9. &nbsp;<%=map.get(9) %></h2>	</a>					
				</div>				
				<div class="da-slide">
					<a href="<%=map.get(20) %>"onClick="window.open(this.href, ''); return false;"> <h2>10. &nbsp;<%=map.get(10) %></h2>	</a>					
				</div>
				
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
        </div>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script type="text/javascript" src="/resources/rolling/js/jquery.cslider.js"></script>
		<script type="text/javascript">
			$(function() {
				
				$('#da-slider').cslider({
					autoplay	: true,
					bgincrement	: 450
				});
			});
		</script>	
