<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>


  <head>
    <title>Podcast &mdash; Colorlib Website Template</title>
    <script type = "text/javascript">
	function getRecord(n){
		frm.bId.value = n;
		frm.submit();
	}
</script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,700,900"> 
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <div class="site-blocks-cover inner-page-cover bg-light mb-5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-12 text-center">
            <h1 class="mb-0">Notice</h1>
            <a href="home.do">Home</a><span class="mx-2">&bullet;</span> 공지사항
          </div>
        </div>
      </div>
    </div>
    
    <div class="site-section pt-3">
     
    

    <div class="site-section pt-3">
      <div class="container">
        <div align="center">

	<div>
		<table class="table table-striped">
			<tr>
				<th width ="70">번호</th>
				<th width ="300">글 제목</th>
				<th width ="150">작성자</th>
				<th width ="150">작성일자</th>
				<th width ="70">조회수</th>
			</tr>
			<c:forEach var="board" items="${boards }">
			<tr onmouseover="this.style.background='lightgray'" onmouseout="this.style.background='white'"
				
					onclick="getRecord(${board.bId})">
					<td align="center">${board.bId }</td>
					<td>${board.bTitle }</td>
					<td align="center">${board.bWriter }</td>
					<td align="center">${board.bDate }</td>
					<td align="center">${board.bHit }</td>
				</tr>
			</c:forEach>
		</table>
	</div><br/>
	<div>
		<button type = "button" onclick="location.href='home.do'">홈 가기</button> &nbsp;&nbsp;&nbsp;
		<c:if test="${author eq 'ADMIN' }"><button type = "button" onclick="location.href='insertForm.do'">새글작성</button></c:if>
	</div>
	<div>
		<form id="frm" name="frm" action="boardSelect.do" method="post">
			<input type="hidden" id="bId" name="bId">
		</form>
	</div>
</div>
    </div>
    
  

    
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/mediaelement-and-player.min.js"></script>

  <script>
      document.addEventListener('DOMContentLoaded', function() {
                var mediaElements = document.querySelectorAll('video, audio'), total = mediaElements.length;

                for (var i = 0; i < total; i++) {
                    new MediaElementPlayer(mediaElements[i], {
                        pluginPath: 'https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/',
                        shimScriptAccess: 'always',
                        success: function () {
                            var target = document.body.querySelectorAll('.player'), targetTotal = target.length;
                            for (var j = 0; j < targetTotal; j++) {
                                target[j].style.visibility = 'visible';
                            }
                  }
                });
                }
            });
    </script>


  <script src="js/main.js"></script>
    
  </body>
</html>