<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div id="slider-carousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
					<li data-target="#slider-carousel" data-slide-to="1"></li>
					<li data-target="#slider-carousel" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner">
					<c:forEach items="${listBanners}" varStatus="status" begin="0" end="${listBanners.size()-1}">
						<c:choose>
							<c:when test="${status.index == 1}">
								<div class="item active">
									<div class="col-sm-6">
										<h1>
											<span>M</span>arkito
										</h1>
										<h2>${listBanners.get(status.index).bannerName }</h2>
										<h3>Giảm giá ${listBanners.get(status.index).sale_off }%</h3>
										<p>${listBanners.get(status.index).banner_content }</p>
										<button type="button" class="btn btn-default get">Xem ngay</button>
									</div>
									<div class="col-sm-6">
										<img src="images/home/${listBanners.get(status.index).bannerImgUrl }" class="girl img-responsive" alt="" /> 
									</div>
								</div>
							</c:when>
							<c:otherwise>
							<div class="item">
									<div class="col-sm-6">
										<h1>
											<span>M</span>arkito
										</h1>
										<h2>${listBanners.get(status.index).bannerName }</h2>
										<h3>Giảm giá ${listBanners.get(status.index).sale_off }%</h3>
										<p>${listBanners.get(status.index).banner_content }</p>
										<button type="button" class="btn btn-default get">Xem ngay</button>
									</div>
									<div class="col-sm-6">
										<img src="images/home/${listBanners.get(status.index).bannerImgUrl }" class="girl img-responsive" alt="" /> 
									</div>
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
				<a href="#slider-carousel" class="left control-carousel hidden-xs"
					data-slide="prev"> <i class="fa fa-angle-left"></i>
				</a> <a href="#slider-carousel" class="right control-carousel hidden-xs"
					data-slide="next"> <i class="fa fa-angle-right"></i>
				</a>
			</div>
		</div>
	</div>
</div>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>