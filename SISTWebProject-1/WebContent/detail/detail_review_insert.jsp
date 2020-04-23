<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section class="banner-area relative">
<div class="overlay overlay-bg"></div>
<div class="container box_1170">
	<div class="row d-flex align-items-center justify-content-center">
		<div class="about-content col-lg-12">
			<h1 class="text-white">리뷰작성 페이지  (${title})</h1>
			<p class="text-white link-nav">
				<a href="index.html">Home </a> <span class="lnr lnr-arrow-right"></span>
				<a href="archive.html"> Archive</a>
			</p>
		</div>
	</div>
</div>
</section>
  <div class="container">
    <h1 class="text-center">리뷰작성</h1>
    <div class="row">
      <form name="frm" action="../detail/detail_review_insert_ok.do" method="post" id="frm" enctype="multipart/form-data">
      <table class="table table-hover">
      	<tr>
          <th width=20% class="danger text-right">분류</th>
          <td width=80%>
            <p name=type size=35 readonly id="memberid">${category}</p>
          </td>
        </tr>
        <tr>
          <th width=20% class="danger text-right">장소이름</th>
          <td width=80%>
             <p name=title size=35 readonly id="memberid">${title}</p>
          </td>
        </tr>
        <tr>
          <th width=20% class="danger text-right">이름</th>
          <td width=80%>
            <p name=memberid size=35 readonly id="memberid">${memberid}</p>
          </td>
        </tr>
   
        <tr>
          <th width=20% class="danger text-right">작성날짜</th>
          <td width=80%>
            <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
            <c:out value="${today}"/>
          </td>
        </tr>
        <tr>
          <th width=20% class="danger text-right">체험날짜</th>
          <td width=80%>
            <input type=date name=expdate size=50 class="input-sm" required>
          </td>
        </tr>
        <tr>
          <th width=20% class="danger text-right">태그입력</th>
          <td width=80%>
          	 <select class="input-sm" name="tagcode1">
          	 	<c:forEach var="tag" items="${hashtaglist}">
					<option>${tag}</option>          	 	
          	 	</c:forEach>
          	 </select>
          </td>
        </tr>
        <tr>
          <th width=20% class="danger text-right">태그입력</th>
          <td width=80%>
          	 <select class="input-sm" name="tagcode2">
          	 	<c:forEach var="tag" items="${hashtaglist}">
					<option>${tag}</option>          	 	
          	 	</c:forEach>
          	 </select>
          </td>
        </tr>
        <tr>
          <th width=20% class="danger text-right">태그입력</th>
          <td width=80%>
          	 <select class="input-sm" name="tagcode3">
          	 	<c:forEach var="tag" items="${hashtaglist}">
					<option>${tag}</option>          	 	
          	 	</c:forEach>
          	 </select>
          </td>
        </tr>
        <tr>
          <th width=20% class="danger text-right">점수</th>
          <td width=80%>
            <select class="input-sm" name="grade">
              <option>5점</option>
              <option>4점</option>
              <option>3점</option>
              <option>2점</option>
              <option>1점</option>
            </select>
          </td>
        </tr>
        
        <tr>
          <th width=20% class="danger text-right">내용</th>
          <td width=80%>
            <textarea rows="8" cols="60" name=content></textarea>
          </td>
        </tr>
        <tr>
      		<th width=20% class="danger text-right">사진 파일1</th>
      		<td width=80% >
      			<div class="filebox preview-image"> 
      				<input type="file" name=photo1 id="photo1" class="upload-hidden"> 
      			</div>
      		</td>
      	</tr>
      	<tr>
      		<th width=20% class="danger text-right">사진 파일2</th>
      		<td width=80% >
      			<div class="filebox preview-image"> 
      				<input type="file" name=photo2 id="photo2" class="upload-hidden"> 
      			</div>
      		</td>
      	</tr>
        <tr>
          <td colspan="2" class="text-center">
            <input type=submit value="리뷰작성" class="btn btn-sm btn-info"
            id="sendBtn">
            <input type=button value="취소" class="btn btn-sm btn-success"
              onclick="javascript:history.back()"
            >
          </td>
        </tr>
        
      </table>
      </form>
    </div>
   </div>
</body>
</html>