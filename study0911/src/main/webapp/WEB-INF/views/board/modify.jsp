<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp" %>
  <div class="main-panel">
        <div class="content-wrapper">
        
        
         <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Modify</h4>
					<p class="card-description">
                   Modify!!
                 	 </p>
               <form role="form" action="modify" id = "frm" method="post">
					<input type="hidden" name="bno" value="${board.bno}">
                  
                    <div class="form-group">
                      <label for="exampleInputName1">제목</label>
                      <input type="text" class="form-control" name='title' value='${board.title }'>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName2">작성자</label>
                      <input type="text" class="form-control" name='writer' value='${board.writer }'>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">내용</label>
                      <textarea class="form-control" id="exampleTextarea1" rows="4" name='content'>${board.content }</textarea>
                    </div>
                    <div align="center">
                    <button type="submit" class="btn btn-outline-primary btn-fw">Modify</button>
                 	</div>
                  </form>
                </div>
              </div>
            </div>
        
        
        


</div>

<%@include file="/WEB-INF/views/includes/footer.jsp" %>