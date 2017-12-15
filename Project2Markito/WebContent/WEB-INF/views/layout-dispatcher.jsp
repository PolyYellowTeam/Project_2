<%@ page pageEncoding="utf-8"%>
<%
	String view = request.getParameter("view");
	if (view.contains("admin-login")) {
		pageContext.forward("admin-login-layout.jsp");
	} else if (view.contains("admin")) {
		pageContext.forward("admin-layout.jsp");
	} else {
		pageContext.forward("user-layout.jsp");
	}
%>
