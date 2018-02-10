<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>
<%@ include file="../include/analytics.jsp"%>	



<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.2/summernote.js"></script>
    
    
    
<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted #ecb775;
  background-color: #effecb;
  margin: auto;
  
}
</style>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12" style="width:80%;padding-left:2%">
			<!-- general form elements -->
			<div class="box box-primary">
			<div class="box-header">
					<h3 class="box-title">글 작성</h3>
				</div>
				
				<!-- /.box-header -->

<form id='registerForm' role="form" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">제목</label> <input type="text"
				name='title' class="form-control" placeholder="제목을 입력해주세요">
		</div>
		<!-- <div class="form-group"	>
			<label for="exampleInputPassword1">Content</label>
			<textarea class="form-control" name="content" rows="3"
				placeholder="Enter ..."></textarea>
		</div> -->
		
		<textarea div id="summernote" name="content"  placeholder="내용을 입력하세요"></textarea></div>
  <script>
  $('#summernote').summernote({
	  height: 300,                 // set editor height
	  minHeight: null,             // set minimum height of editor
	  maxHeight: null,             // set maximum height of editor
	  focus: true,                  // set focus to editable area after initializing summernote
	  placeholder: '내용을 입력해 주세요'
	});
 
 
  </script>
		
		
		
		
		
		<div class="form-group">
			<label for="exampleInputEmail1">작성자</label> 
			<input type="text" name="writer" 
			  class="form-control"  value="${login.uid }" readonly>
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">업로드할 파일을 아래에 드래그&드롭 해주세요</label>
			<div class="fileDrop"></div>
		</div>
	</div>

	<!-- /.box-body -->

	<div class="box-footer">
		<div>
			<hr>
		</div>

		<ul class="mailbox-attachments clearfix uploadedList">
		</ul>

		<button type="submit" class="btn btn-primary" onclick="isEmpty()">글 등록</button>

	</div>
</form>


			</div>
			<!-- /.box -->
			<div class="bannerlink">
	<div class="banner">
		<img src="/smartit/resources/bootstrap/image/banner.jpg" />
		
		
	</div>
	<div id="mlink" class="mbx">
			<ul>
			<li class="ico7"><a href="http://sgsso.dhu.ac.kr" target="_blank" title="새창으로 학생종합정보 홈페이지 연결">학생종합정보</a></li>
            <li class="ico5"><a href="http://library.dhu.ac.kr/" target="_blank" title="새창으로 도서관 홈페이지 연결">도서관</a></li>	
            <li class="ico6"><a href="http://bis.gbgs.go.kr/bs/businfo/sub03_03.jsp" target="_blank" title="새창으로 경산버스 홈페이지 연결">경산버스</a></li>					
			<li class="ico9"><a href="https://mail.dhu.ac.kr/" target="_blank" title="새창으로 웹메일 홈페이지 연결">웹메일</a></li>
			<li class="ico11"><a href="http://lifelong.dhu.ac.kr/" target="_blank" title="새창으로 평생교육원 홈페이지 연결">평생교육원</a></li>
			<li class="ico4"><a href="http://www.jaan.co.kr/" target="_blank" title="새창으로 자안쇼핑몰 홈페이지 연결">자안쇼핑몰</a></li>
			</ul>
		</div>
	</div>
	</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script type="text/javascript" src="/smartit/resources/js/upload.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>	
  </div>
</li>                
</script>    

<script>

function goLogin(){
	self.location ="/smartit/user/login";
}


var template = Handlebars.compile($("#template").html());

$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	var formData = new FormData();
	
	formData.append("file", file);	
	
	
	$.ajax({
		  url: '/smartit/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
		});	
});


$("#registerForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});
	
	that.append(str);

	that.get(0).submit();
});



</script>

<%@include file="../include/footer.jsp"%>
 
 