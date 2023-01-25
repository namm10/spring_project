<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"	isELIgnored="false"
	%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"/>
<c:set var="goods"  value="${goodsMap.goodsVO}"  />
<c:set var="imageList"  value="${goodsMap.imageList }"  />
<%
  request.setCharacterEncoding("UTF-8");
  pageContext.setAttribute("crcn" , "\n"); //Ajax로 변경 시 개행 문자 
  pageContext.setAttribute("br", "<br/>"); //br 태그

%>  

<div id="ad_main_banner">
	<ul class="bjqs">	 	
	  <li><img width="1200" height="560" src="${contextPath}/resources/image/top_banner1.jpg"></li>
		<li><img width="1200" height="560" src="${contextPath}/resources/image/top_banner2.jpg"></li>
		<li><img width="1200" height="560" src="${contextPath}/resources/image/top_banner3.jpg"></li> 
	</ul>
</div>

<div class="main_book">
   <c:set  var="goods_count" value="0" />
	<h3>필라</h3>
	<c:forEach var="item" items="${goodsMap.fila }">
	   <c:set  var="goods_count" value="${goods_count+1 }" />
		<div class="book">
		
			<a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goods_id }" class="link">
			<img src="${contextPath}/resources/image/1px.gif"> 
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


   
   