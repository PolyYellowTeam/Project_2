
<%
	String view = request.getParameter("view");
	if (view.startsWith("admin/")) {
		pageContext.forward("admin-layout.jsp");
	} 
	if (view.contains("account")) {
		pageContext.forward("account-layout.jsp");
	} else {
		pageContext.forward("user-layout.jsp");
	}
%>