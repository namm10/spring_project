<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />	
<!DOCTYPE html>

<meta charset="utf-8">
<head>
<script type="text/javascript">
  var cnt=0;
  function fn_addFile(){
	  if(cnt == 0){
		  $("#d_file").append("<br>"+"<input  type='file' name='main_image' id='f_main_image' />");	  
	  }else{
		  $("#d_file").append("<br>"+"<input  type='file' name='detail_image"+cnt+"' />");
	  }
  	
  	cnt++;
  }
  
  
  function fn_add_new_goods(obj){
		 fileName = $('#f_main_image').val();
		 if(fileName != null && fileName != undefined){
			 obj.submit();
		 }else{
			 alert("메인 이미지는 반드시 첨부해야 합니다.");
			 return;
		 }
		 
	}
</script>    
</head>

<BODY>
<form action="${contextPath}/admin/goods/addNewGoods.do" method="post"  enctype="multipart/form-data">
		<h1>새상품 등록창</h1>
<div class="tab_container">
	<!-- 내용 들어 가는 곳 -->
	<div class="tab_container" id="container">
		<ul class="tabs">
			<li><a href="#tab1">상품정보</a></li>
			<!-- 
			<li><a href="#tab2">상품목차</a></li>
			<li><a href="#tab3">상품저자소개</a></li>
			<li><a href="#tab4">상품소개</a></li>
			<li><a href="#tab5">출판사 상품 평가</a></li>
			<li><a href="#tab6">추천사</a></li>
			 -->
			<li><a href="#tab7">상품이미지</a></li>
		</ul>
		<div class="tab_container">
			<div class="tab_content" id="tab1">
				<table >
			<tr >
				<td width=200 >제품분류</td>
				<td width=500><select name="goods_sort">
						<option value="나이키" selected>나이키
						<option value="아디다스">아디다스
						<option value="뉴발란스">뉴발란스
						<option value="아식스">아식스
						<option value="퓨마">퓨마
						<option value="필라">필라
					</select>
				</td>
			</tr>
			<tr >
				<td >제품이름</td>
				<td><input name="goods_title" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >원산지</td>
				<td><input name="goods_publisher" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >정가</td>
				<td><input name="goods_price" type="text" size="40" /></td>
			</tr>
			
			<tr>
				<td >판매가</td>
				<td><input name="goods_sales_price" type="text" size="40" /></td>
			</tr>
			
			
			<tr>
				<td >제품 구매 포인트</td>
				<td><input name="goods_point" type="text" size="40" /></td>
			</tr>

			<tr>
				<td >중량/용량</td>
				<td><input name="goods_total_page" type="text" size="40" /></td>
			</tr>
			

			<tr>
				<td >제품 배송비</td>
				<td><input name="goods_delivery_price" type="text" size="40" /></td>
			</tr>
			<tr>
				<td >제품 도착 예정일</td>
				<td><input name="goods_delivery_date"  type="date" size="40" /></td>
			</tr>
			<tr>
				<td >.</td>
				<td><input name="goods_writer" type="hidden" size="40" /></td>
			</tr>
						
			<tr>
				<td >.</td>
				<td><input  name="goods_published_date"  type="hidden" size="40" /></td>
			</tr>
						<tr>
				<td >.</td>
				<td><input name="goods_isbn" type="hidden" size="40" /></td>
			</tr>
			<tr>
				<td >제품종류</td>
				<td>
				<select name="goods_status">
				  <option value="nike"  selected>nike</option>
				  <option value="adidas" >adidas</option>
				  <option value="newbalance" >newbalance</option>
				  <option value="asics" >asics</option>
				  <option value="puma" >puma</option>
				  <option value="fila"  >fila</option>
				</select>
				</td>
			</tr>
			<tr>
			 <td>
			   <br>
			 </td>
			</tr>
				</table>	
			</div>
			<div class="tab_content" id="tab2">
				<H4>책목차</H4>
				<table>	
				 <tr>
					<td >책목차</td>
					<td><textarea  rows="100" cols="80" name="goods_contents_order"></textarea></td>
				</tr>
				</table>	
			</div>
			<div class="tab_content" id="tab3">
				<H4>제품 저자 소개</H4>
				 <table>
  				 <tr>
					<td>제품 저자 소개</td>
					<td><textarea  rows="100" cols="80" name="goods_writer_intro"></textarea></td>
			    </tr>
			   </table>
			</div>
			<div class="tab_content" id="tab4">
				<H4>제품소개</H4>
				<table>
					<tr>
						<td >제품소개</td>
						<td><textarea  rows="100" cols="80" name="goods_intro"></textarea></td>
				    </tr>
			    </table>
			</div>
			<div class="tab_content" id="tab5">
				<H4>출판사 제품 평가</H4>
				<table>
				 <tr>
					<td>출판사 제품 평가</td>
					<td><textarea  rows="100" cols="80" name="goods_publisher_comment"></textarea></td>
			    </tr>
			</table>
			</div>
			<div class="tab_content" id="tab6">
				<H4>추천사</H4>
				 <table>
					 <tr>
					   <td>추천사</td>
					    <td><textarea  rows="100" cols="80" name="goods_recommendation"></textarea></td>
				    </tr>
			    </table>
			</div>
			<div class="tab_content" id="tab7">
				<h4>상품이미지</h4>
				<table >
					<tr>
						<td align="right">이미지파일 첨부</td>
			            
			            <td  align="left"> <input type="button"  value="파일 추가" onClick="fn_addFile()"/></td>
			            <td>
				            <div id="d_file">
				            </div>
			            </td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="clear"></div>
<center>	
	 <table>
	 <tr>
			  <td align=center>
				<!--   <input  type="submit" value="상품 등록하기"> --> 
				  <input  type="button" value="상품 등록하기"  onClick="fn_add_new_goods(this.form)">
			  </td>
			</tr>
	 </table>
</center>	 
</div>
</form>	 