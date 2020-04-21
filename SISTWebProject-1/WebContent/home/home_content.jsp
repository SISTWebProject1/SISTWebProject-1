<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="main-body body-gap">
	<div class="container-fluid">
		<div class="row">
			<div class="post-list">
				<section class="post-area">
					<div class="detail_foodset">
						<c:forEach var="item" items="${ lists }">
							<h3 style="margin-left: 25px;"><p>
								<a href="../home/htitemlist.do?tagcode=${ item.key.tagcode }">
									<font color="black">
										#${ item.key.tagname }
									</font>
									<sub style="position: relative; bottom: 3px;">&nbsp;더보기</sub>
								</a>	
							</p></h3>
							
							<div class="row food-catetop">
								<c:forEach var="hcvo" items="${ item.value }">
									<div class="col-lg-3 col-md-3">
										<div class="single-post-item short">
											<figure>
												<a href="../detail/detail.do?type=${ hcvo.type }&no=${ hcvo.no }">
													<img class="post-img img-fluid" src="${ hcvo.photo }" onerror="javascript:src='../img/logo.png'">
												</a>
											</figure>
											
											<div class="heart">
												<button class="heart_button" type="button">
													<i class="fas fa-heart"></i>
												</button>
											</div>
											
											<div class="detail_food3">
												<h4><a href="../detail/detail.do?type=${ hcvo.type }&no=${ hcvo.no }">${ hcvo.name }</a></h4>
												
												<div class="grade">
													<p class="grade2" style="WIDTH: 50%;"></p>
												</div>
												&nbsp; <a href="../detail/detail.do?type=${ hcvo.type }&no=${ hcvo.no }">리뷰 xx건</a>
												<div class="detail_food3_tag">#태그 #태그</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</c:forEach>
					</div>
				</section>
			</div>
		</div>
	</div>
</div>