<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<ul class="pagination">
	<li><a href="products?idCategory=${idCategory}&idCatalogs=${idCatalogs}&pages=${page-1}">&laquo;</a></li>
	<li class="active"><a href="products?idCategory=${idCategory}&idCatalogs=${idCatalogs}&pages=${page-1}">1</a></li>
	<c:forEach begin="2" end="${soluong/9+1}" varStatus="i">	
	<li><a href="products?idCategory=${idCategory}&idCatalogs=${idCatalogs}&pages=${page}">${i.index}</a></li>	
	</c:forEach>
	<li><a href="products?idCategory=${idCategory}&idCatalogs=${idCatalogs}&pages=${page+1}">&raquo;</a></li>
</ul>