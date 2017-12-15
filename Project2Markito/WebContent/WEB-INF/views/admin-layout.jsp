<!DOCTYPE html>
<%@ page pageEncoding="utf-8"%>
<html lang="en">
<head>
  <title>Admin</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-responsive.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/fullcalendar.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/matrix-style.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/matrix-media.css" />
  <link href="static/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<!--Header-part-->
<div id="header">
  <div style="width: 220px;padding-top: 25px;padding-left: 60px;">
  <img src="images/logo.png"/>
  </div>
</div>
<!--close-Header-part-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i>Thông tin tài khoản</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i></a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
  <ul>
    <li class="active"><a href="index.html"><i class="icon icon-home"></i> <span>Trang chủ</span></a> </li>
    <li class="submenu"> <a href="javascript:void(0);"><i class="icon icon-inbox"></i> <span>Đơn hàng</span> <span class="label label-important">2</span></a>
      <ul>
        <li><a href="${pageContext.request.contextPath}/Admin/Carts">Doanh số bán hàng</a></li>
        <li><a href="gallery.html">Sản phẩm tồn kho</a></li>
      </ul>
    </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Quản lý Danh Muc</span></a> </li>    
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Quản lý Loại sản phẩm</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Quản lý Sản Phẩm</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Quản lý Nhân viên</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Quản lý Tài khoản</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Quản lý Khách hàng</span></a> </li>
    <li> <a href="widgets.html"><i class="icon icon-inbox"></i> <span>Nhà cung cấp</span></a> </li>
   	<li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>Báo cáo</span> <span class="label label-important">2</span></a>
      <ul>
        <li><a href="index2.html">Doanh số bán hàng</a></li>
        <li><a href="gallery.html">Sản phẩm tồn kho</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Tiện ích</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="QLSKdata">Từ khóa SEO</a></li>
        <li><a href="QLBAdata">Banner Khuyến mại</a></li>
        <li><a href="form-validation.html">Từ khóa nổi bật</a></li>
        <li><a href="form-wizard.html">Phương thức thanh toán</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important">4</span></a>
      <ul>
        <li><a href="error403.html">Error 403</a></li>
        <li><a href="error404.html">Error 404</a></li>
        <li><a href="error405.html">Error 405</a></li>
        <li><a href="error500.html">Error 500</a></li>
      </ul>
    </li>
  </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<jsp:include page="admin/${param.view}" />
<!--end-main-container-part-->

<script src="${pageContext.request.contextPath}/static/js/excanvas.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.ui.custom.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.peity.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/fullcalendar.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/matrix.js"></script>
<script src="${pageContext.request.contextPath}/static/js/matrix.dashboard.js"></script>
<script src="${pageContext.request.contextPath}/static/js/matrix.interface.js"></script>
<script src="${pageContext.request.contextPath}/static/js/matrix.chat.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.validate.js"></script>
<script src="${pageContext.request.contextPath}/static/js/matrix.form_validation.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.wizard.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/static/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/matrix.popover.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/matrix.tables.js"></script>
<script src="${pageContext.request.contextPath}/static/js/admin/functions.js"></script>

<script type="text/javascript">
    // This function is called from the pop-up menus to transfer to
    // a different page. Ignore if the value returned is a null string:
    function goPage (newURL) {

        // if url is empty, skip the menu dividers and reset the menu selection to default
        if (newURL != "") {

            // if url is "-", it is this page -- reset the menu:
            if (newURL == "-" ) {
                resetMenu();
            }
            // else, send page to designated URL            
            else {
                document.location.href = newURL;
            }
        }
    }

    // resets the menu selection upon entry to this page:
    function resetMenu() {
        document.gomenu.selector.selectedIndex = 2;
    }
</script>
</body>
</html>
