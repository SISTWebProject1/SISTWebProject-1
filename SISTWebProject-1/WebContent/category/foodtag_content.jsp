<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
</head>
<body>
	<!-- Start body Area -->
	<div class="main-body body-gap">
		<div class="container box_1170">
			<div class="row">
				<div class="col-lg-3 sidebar">
					<!-- Start food_side Area -->
					<jsp:include page="food_side.jsp"></jsp:include>
					<!-- End food_side Area -->
				</div>
				<div class="col-lg-9 post-list">
					<!-- Start food_content Area -->
					<div class="col-lg-12">
						<h3>
							<p>서울의 음식점</p>
						</h3>
						<div class="body_main_set">
							<div class="row">
								<c:forEach var="vo" items="${tlist }">
									<div class="cate_body">
										<div class="col-lg-4 col-md-4" style="height: 200px">
											<a href=""><img class="post-img img-fluid" alt="음식점사진"
												style="border-radius: 10px 10px 10px 10px;"
												src="${vo.rphoto }"></a>
											<div class="heart">
												<button class="heart_button" type="button">
													<i class="far fa-heart fa-fw"></i>
												</button>
											</div>
										</div>
										<div class="col-lg-8 col-md-8">
											<div class="body_main_text_title">${vo.rname }</div>
											<div class="body_main_text_info">
												<div class="grade">
													<p class="grade2" style="WIDTH: 80%;"></p>
												</div>
												<div class="body_main_text_info_reviewNum">&nbsp;xxx건의
													리뷰</div>
												<div class="body_main_text_info_foodtype">#한식 #저렴 #점심</div>
												<div class="body_main_text_info_foodtype">${vo.price }</div>
											</div>
											<div class="body_main_text_info_bestreview">
												<div class="body_main_text_info_bestreview_one">
													<i class="fas fa-quote-right"></i>&nbsp;&nbsp;&nbsp;제육백반입니다
													ㅎㅎ
												</div>
												<div class="body_main_text_info_bestreview_two">
													<i class="fas fa-quote-right"></i>&nbsp;&nbsp;&nbsp;돈 받고
													먹으라고 해도 여긴 좀...
												</div>
											</div>
										</div>
									</div>
									<br>
								</c:forEach>
							</div>
						</div>
					</div>

					<br> <br>

					<div class="col-lg-12">
						<nav class="blog-pagination justify-content-center d-flex">
							<ul class="pagination">

								<c:if test="${startPage>1 }">
									<li class="page-item"><a
										href="../category/food.do?page=${startPage-1}"
										class="page-link" aria-label="Previous"> <span
											aria-hidden="true"> <span class="lnr lnr-arrow-left"></span></span>
									</a></li>
								</c:if>
								<c:set var="type" value="" />
								<c:forEach var="i" begin="${startPage}" end="${endPage }">

									<c:if test="${curpage==i }">
										<c:set var="type" value="class=active" />
									</c:if>
									<c:if test="${curpage!=i }">
										<c:set var="type" value="" />
									</c:if>
									<li ${type } class="page-item"><a
										href="../category/food.do?page=${i}" class="page-link">${i}</a></li>
								</c:forEach>
								<c:if test="${endPage<allPage }">
									<li class="page-item"><a
										href="../category/food.do?page=${endPage+1}" class="page-link"
										aria-label="Next"> <span aria-hidden="true"> <span
												class="lnr lnr-arrow-right"></span></span>
									</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
					<!-- End food_content Area -->
				</div>
			</div>
		</div>
	</div>
	<!-- End body Area -->
</body>
</html>