<!DOCTYPE html>
<%@ page pageEncoding="utf-8"%>
<html lang="en">
<%-- <%
	if(request.getAttribute("role") != null){
		response.sendRedirect(request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+"/admin-index");
	}
%> --%>
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
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
</div>
<!--close-top-serch-->
<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
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
