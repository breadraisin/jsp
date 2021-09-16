<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <%@include file="/WEB-INF/views/includes/header.jsp" %>

 <div class="main-panel">
        <div class="content-wrapper">
        
         <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                   <h4 class="card-title">${board.title }</h4>
					<p class="card-description">
                    <fmt:formatDate value="${board.regDate }" type="DATE" pattern="yyyy-MM-dd" />
                 	 </p>
                  	
                    <div class="form-group">
                      <input type="hidden" class="form-control" value="${board.bno }" readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName2">writer</label>
                      <input type="text" class="form-control" value="${board.writer }" readonly>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">content</label>
                       <textarea class="form-control" id="exampleTextarea1" rows="4" name='content' readonly>${board.content }</textarea>
                    </div>
                  
                    <div align="center">
                  <button type="button"  class="btn btn-outline-primary btn-fw" onclick="location.href='modify?bno=${board.bno}'"> Modify </button>
					<p>
					<form role="form" action="delete" id = "frm" method="post">
						<input type="hidden" name="bno" value="${board.bno}">
						<button type="submit" class="btn btn-outline-primary btn-fw"> Delete </button>
					</form>
					</p>
                 	</div>
                 
                </div>
              </div>
            </div>
        
        <!-- 댓글  -->
          <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                   <h4 class="card-title">댓글</h4>
					<p class="card-description">
                 	</p>
                 	<div>
	                 	<form id="replyForm">
							<input type="hidden" name="bno" value="${board.bno}" >
							<input name="replyer" value="${board.writer}" class="form-control">
							<input name="reply" class="form-control">
							<div align="right">
							<button type="button" class="btn btn-gradient-primary btn-sm" id="saveReply">댓글등록</button>
							</div>
						</form>
                 	</div>
                 	<!-- 댓글 목록 -->
						<div class="row">
							<div class="col-lg-12">
						 		<ul class="chat">
						 		</ul>
							</div>
						</div>
						<!-- 댓글 목록 끝 -->
                 </div>
               </div>
          </div>
  

</div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
let bno = "${board.bno}";
$(function(){

	//등록처리
	$("#saveReply").on("click", function(){
		$.ajax({
			url : "../reply/",
			method : "post",
			data : $("#replyForm").serialize(),
			dataType : "json",
			success : function(data){
				console.log(data);
				$(".chat").append(makeLi(data));
			}
		});//아작스 끝
	});//등록처리 함수끝
	
	function makeLi(data){
        return '<li id="li" class="left clearfix" data-rno='+data.rno+'>'
           +'<div>'
           +'<div class="header">'
           +'    <strong id="replyer" class="primary-font">'+data.replyer+'</strong>'
           +'    <small class="pull-right text-muted">'+data.replydate+'</small>'
           +'        <p>'+ data.reply+'</p>'
           +    '</div>'
           +'<div align="right">'
           +'<button type="button" class="btn btn-gradient-primary btn-sm" id="upReplyForm">수정</button>'
           +'<button type="button" class="btn btn-gradient-primary btn-sm" id="delReply">삭제</button>'
           +'</div>'
           +'    </div>'
           +'    </li>';
        }
	
	//목록조회
	$.ajax({
		url : "../reply/",		//디폴트 method(or type):"get"
		data : 	{bno : bno},	//"bno=8"
		dataType : "json",			//서버에서 넘어오는 결과가 제이슨, 응답결과가 json
		success : function(datas){
			//console.log(datas);
			str = "";
			for(i=0; i<datas.length; i++){
				str += makeLi(datas[i]);
			}
			$(".chat").html(str);
		}
		
	});
	
	//삭제 
		$('body').on('click','#delReply',function(){
			var rno = $(this).closest('li').data('rno');
			var result = confirm(" 댓글을 정말로 삭제하시겠습니까?");
			var li = $(this).closest('li');
			if(result) {
				$.ajax({
					url:"../reply/" + rno,  
					type:'DELETE',
					//data: {},
					dataType:'json',
					success:function() {
						li.remove();
						alert("삭제완료");
					}
				});      }//if
		}); //삭제 버튼 클릭

	//수정폼
	$('body').on('click','#upReplyForm',function(){
		$("#li").hide();
		var rno = $(this).closest('li').data('rno');
		var htmls = "";
		htmls += '<p>'+ rno+'</p>'
		$(".chat").append(htmls);
	});
	
})//End

</script>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>