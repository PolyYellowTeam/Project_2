<%@ page pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<jsp:include page="adminhead.jsp"></jsp:include>
</head>
<body>
	<!-- Header -->
		<jsp:include page="adminheader.jsp"></jsp:include>
	<!-- End Header -->

	<!-- Container -->
	<div id="container">
		<div class="shell">
			<!-- Main -->
			<div id="main">
				<div class="cl">&nbsp;</div>

				<!-- Content -->
				<div id="content">
					<!-- Box -->
					<div class="box">
						<!-- Box Head -->
						<div class="box-head">
							<div class="left">
								<img src="css/images/add.png"> <a href="adminQLLPaddnew.html">Thêm</a>
							</div>
							<div class="right">
								<img src="css/images/search.png"> <a href="adminQLLPsearch.html">Tìm kiếm</a>
							</div>
						</div>
						<!-- End Box Head -->
						<div>
							
						</div>	
						<!-- Table -->
						<div class="table1">
								<table width="100%" border="0" cellspacing="0" cellpadding="0" bordercolor="black">
									<tr>
										<th>Mã loại phòng</th>
										<th>Tên loại phòng</th>
										<th>Mô tả</th>
										<th>Tùy chọn</th>
									</tr>

									<c:forEach var="room" items="">
										
									</c:forEach>

								</table>
						</div>
						<!-- Table -->
					</div>
					<!-- End Box -->

				</div>
				<!-- End Content -->

				<div class="cl">&nbsp;</div>
			</div>
			<!-- Main -->
		</div>
	</div>
	<!-- End Container -->
</body>
</html>