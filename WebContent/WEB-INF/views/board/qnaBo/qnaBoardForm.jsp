<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<head>
	<meta charset="UTF-8">
	<title>새글 쓰기 창</title>
	
	<link href="${contextPath}/resources/css/board.css" rel="stylesheet" type="text/css">
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<script type="text/javascript">
	   function readURL(input) {
	      if (input.files && input.files[0]) {
		      var reader = new FileReader();
		      reader.onload = function (e) {
		        $('#preview').attr('src', e.target.result);
	          }
	         reader.readAsDataURL(input.files[0]);
	      }
	  }  
	  function backToList(obj){
	    obj.action="${contextPath}/board/qnaBo/listqnaBoards.do";
	    obj.submit();
	  }
	  
	  var cnt=1;
	  function fn_addFile(){
		  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
		  cnt++;
	  }
	
	</script>
</head>
<body>
	<div class="box_title">
		<h1>게시글 작성</h1>
	</div>
	<input type="hidden" name="parentNO" value="0">
	<form name="articleForm" method="post" action="${contextPath}/board/qnaBo/addNewqnaBoard.do" enctype="multipart/form-data">
		<table class="addFreeBoardTbl">
			<tr>
				<td>작성자</td>
				<td colspan=2 align="left">
					<input type="text" size="20" maxlength="100" value="${memberInfo.member_name }" readonly />
				</td>
			</tr>
			<tr>
				<td>글제목:</td>
				<td colspan="2">
					<input type="text" size="67" maxlength="500" name="title" />
				</td>
			</tr>
			<tr>
				<td><br>글내용</td>
				<td colspan=2>
					<textarea name="content" maxlength="4000"></textarea>
				</td>
			</tr>
			<tr>
				<td>이미지파일 첨부:</td>
				<td style="padding-top: 15px; width:40%;">
					<input type="file" name="imageFileName" onchange="readURL(this);" />
					<img id="preview" src="#" hidden="true" />
				</td>
				<td style="padding-top: 20px;">
				이미지파일 첨부</td>
				<td align="left">
					<input type="button" value="파일 추가" onClick="fn_addFile()" />
				</td>
			</tr>
			<tr>
				<td colspan="3"><div id="d_file"></div></td>
			</tr>
			<tr>
				<td align="right"></td>
				<td colspan="2">
					<input type="submit" value="글쓰기" class="_btnFreeBoWrite"/>
					<input type=button value="목록보기" class="_btnFreeBoList" onClick="backToList(this.form)" />			
					</td>
			</tr>
		</table>
	</form>
</body>
</html>
