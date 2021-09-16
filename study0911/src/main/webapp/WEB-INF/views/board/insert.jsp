<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp" %>

      <div class="main-panel">
        <div class="content-wrapper">
        
           <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Register</h4>
					<p class="card-description">
                    Register!!
                 	 </p>
                   <form role="form" action="insert" id = "frm" method="post">
                  
                    <div class="form-group">
                      <label for="exampleInputName1">제목</label>
                      <input type="text" class="form-control" name='title'>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName2">작성자</label>
                      <input type="text" class="form-control" name='writer'>
                    </div>
                    <div class="form-group">
                      <label for="exampleTextarea1">내용</label>
                      <textarea class="form-control" id="exampleTextarea1" rows="4" name='content'></textarea>
                    </div>
                    <div align="center">
                    <button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
                    <button class="btn btn-light">Cancel</button>
                 	</div>
                  </form>
                </div>
              </div>
            </div>
  

</div>
<%@include file="/WEB-INF/views/includes/footer.jsp" %>