<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul class="pagination">
	<li><a href="product?iddm=${iddm}&idlh=${idlh}&pages=${page-1}">&lsaquo;</a></li>
	<li class="active"><a href="product?iddm=${iddm}&idlh=${idlh}&pages=${page}">1</a></li>
	<c:forEach begin="2" end="${soluong/9+1}" varStatus="i">	
	<li><a href="product?iddm=${iddm}&idlh=${idlh}&pages=${page}">${i.index}</a></li>	
	</c:forEach>
	<li><a href="product?iddm=${iddm}&idlh=${idlh}&pages=${page+1}">&raquo;</a></li>
</ul>