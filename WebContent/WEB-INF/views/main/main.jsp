<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
  request.setCharacterEncoding("UTF-8");
%>  

<style>
/*메인 중간 전체*/
article {
	margin: 20px 0px 0px 15px; width: 1200px; float: right; 
	transform: translate(120px, 80px); /*가로/세로*/
}
</style>


<div id="ad_main_banner">
	<ul class="bjqs">	 	
	  <li><img width="1200" height="560" src="${contextPath}/resources/image/top_banner1.jpg"></li>
		<li><img width="1200" height="560" src="${contextPath}/resources/image/top_banner2.jpg"></li>
		<li><img width="1200" height="560" src="${contextPath}/resources/image/top_banner3.jpg"></li> 
	</ul>
</div>
<div class="main_book">
   <c:set  var="goods_count" value="0" />
	<h3>NEW</h3>
	<c:forEach var="item" items="${goodsMap.bestseller }">
	   <c:set  var="goods_count" value="${goods_count+1 }" />
		<div class="book">
			<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
			<img class="link"  src="${contextPath}/resources/image/1px.gif"> 
			</a> 
				<img width="121" height="154" 
				     src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">

			<div class="title">${item.goods_title }</div>
			<div class="price">
		  	   <fmt:formatNumber  value="${item.goods_price}" type="number" var="goods_price" />
		          ${goods_price}원
			</div>
		</div>
	   <c:if test="${goods_count==15   }">
         <div class="book">
           <font size=20> <a href="#">more</a></font>
         </div>
     </c:if>
  </c:forEach>
</div>
<div class="clear"></div>
<div class="main_book" >
<c:set  var="goods_count" value="0" />
	<h3>신상품</h3>
	<c:forEach var="item" items="${goodsMap.newbook }" >
	   <c:set  var="goods_count" value="${goods_count+1 }" />
		<div class="book">
		  <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
	       <img class="link"  src="${contextPath}/resources/image/1px.gif"> 
	      </a>
		 <img width="121" height="154" 
				src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
		<div class="title">${item.goods_title }</div>
		<div class="price">
		    <fmt:formatNumber  value="${item.goods_price}" type="number" var="goods_price" />
		       ${goods_price}원
		  </div>
	</div>
	 <c:if test="${goods_count==15   }">
     <div class="book">
       <font size=20> <a href="#">more</a></font>
     </div>
   </c:if>
	</c:forEach>
</div>

<div class="clear"></div>
<div class="main_book" >
<c:set  var="goods_count" value="0" />
	<h3>특가</h3>
	<c:forEach var="item" items="${goodsMap.steadyseller }" >
	   <c:set  var="goods_count" value="${goods_count+1 }" />
		<div class="book">
		  <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }">
	       <img class="link"  src="${contextPath}/resources/image/1px.gif"> 
	      </a>
		 <img width="121" height="154" 
				src="${contextPath}/thumbnails.do?goods_id=${item.goods_id}&fileName=${item.goods_fileName}">
		<div class="title">${item.goods_title }</div>
		<div class="price">
		    <fmt:formatNumber  value="${item.goods_price}" type="number" var="goods_price" />
		       ${goods_price}원
		  </div>
	</div>
	 <c:if test="${goods_count==15   }">
     <div class="book">
       <font size=20> <a href="#">more</a></font>
     </div>
   </c:if>
	</c:forEach>
</div>