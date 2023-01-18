<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
	

<style>
/*카테고리  width: 1170px;  width:1883px; height: 80px;  transform: translate(-12px, 0px); margin-left:290px;*/
#cate{background-color:#eaeaea; float:left; transform: translate(300px, -130px);/*가로/세로*/
width:1186px; height: 100px; font-size: 30px; font-weight:bold;}
#cate > ul > li{float:left; margin-right:40px;margin-left:40px; margin-top:26px;}
#cate > ul > li > a{}
</style>


<nav>
<ul>

<c:choose>
<c:when test="${side_menu=='admin_mode' }">
   <li>
		<H3>주요기능</H3>
		<ul>
			<li><a href="${contextPath}/admin/goods/adminGoodsMain.do">상품관리</a></li>
			<li><a href="${contextPath}/admin/order/adminOrderMain.do">주문관리</a></li>
			<li><a href="${contextPath}/admin/member/adminMemberMain.do">회원관리</a></li>
			<li><a href="#">배송관리</a></li>
			<li><a href="#">게시판관리</a></li>
		</ul>
	</li>
</c:when>
<c:when test="${side_menu=='my_page' }">
	<li>
		<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마이페이지</h3>
		<ul>
			<li><a href="${contextPath}/mypage/listMyOrderHistory.do">주문내역/배송 조회</a></li>
			<li><a href="#">포인트</a></li>
			<li><a href="${contextPath}/mypage/myDetailInfo.do">회원정보관리</a></li>
			<li><a href="#">회원탈퇴</a></li>
		</ul>
</c:when>
<c:when test="${side_menu=='board' }">	<!-- 06.17 sy) 기본 게시판 생성 후 고객센터와 연결 -->
	<li>
		<h3>게시판</h3>
		<ul>

			<li><a href="${contextPath}/board/noticeBo/listNoticeBoards.do">공지사항 게시판</a></li>
			<li><a href="${contextPath}/board/reViewBo/listreViewBoards.do">상품 후기</a></li>
			<li><a href="${contextPath}/board/qnaBo/listqnaBoards.do">문의사항 게시판</a></li>
			<li><a href="${contextPath}/board/freeBo/listFreeBoards.do">자유게시판</a></li>
		</ul>
	</li>									
</c:when>





<c:otherwise>
 	 <li id="cate">
		<!-- <h3>&nbsp;&nbsp;&nbsp;&nbsp;전체 카테고리</h3> -->
		<ul>
			<li><a href="${contextPath}/goods/goodsList.do">나이키</a></li>
			<li><a href="#">아디다스</a></li>
			<li><a href="#">뉴발란스</a></li>
			<li><a href="#">아식스</a></li>
			<li><a href="#">퓨마</a></li>
			<li><a href="#">휠라</a></li>
		</ul>
	</li> 	 
 </c:otherwise>
 
 
</c:choose>	
</ul>
</nav>
</html>