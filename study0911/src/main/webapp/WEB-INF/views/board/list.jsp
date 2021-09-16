<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="/WEB-INF/views/includes/header.jsp" %>
 <div class="main-panel">
        <div class="content-wrapper">
        
        <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title"><code>Board</code></h4>
                 
                  <table class="table table-hover">
                    <thead>
                     	<tr>
							<td>BNO</td>
							<td>TITLE</td>
							<td>WRITER</td>
							<td>DATE</td>
						</tr>
                    </thead>
                    <tbody>
                    <c:forEach var="board" items="${list }">
						<tr>
							<td ><a href='get?bno=${board.bno}'">${board.bno }</a></td>
							<td>${board.title }</td>
							<td>${board.writer }</td>
							<td> <fmt:formatDate value="${board.regDate }" type="date"/></td>
						</tr>
					</c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
<br>
	<div align="center">
	<button type="button" class="btn btn-gradient-primary btn-rounded btn-fw" onclick="location.href='insert'"> Register </button>
	</div>
</div>

<%@include file="/WEB-INF/views/includes/footer.jsp" %>