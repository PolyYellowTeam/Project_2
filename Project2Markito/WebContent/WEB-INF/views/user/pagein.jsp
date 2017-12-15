<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul class="pagination">
	<li><a href="index?pages=${page-1}">&lsaquo;</a></li>
	<c:forEach begin="1" end="${soluong/9+1}" varStatus="i">	
	<li><a href="index?pages=${i.index}">${i.index}</a></li>	
	</c:forEach>
	<li><a href="index?pages=${page+1}">&raquo;</a></li>
</ul>
