<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<style>
/*회원 로그인 창 텍스트*/
#log{color:#333333; margin-top:100px;}
/*아이디, 비밀번호 전체 테이블*/
#detail_table{margin-left:200px; margin-bottom:300px;}
/*로그인버튼*/
#log_btn
{width:100px; height:30px; background:#93cec5; margin-left:180px; border:none;
border-radius:50px; color:#ffffff; font-weight:bold;}
/*초기화버튼*/
#res_btn
{width:100px; height:30px; background:#93cec5; border:none; border-radius:50px;
color:#ffffff; font-weight:bold;}
/*아이디찾기*/
#one{margin-left:140px;}

</style>


<c:if test='${not empty message }'>

<script>
window.onload=function()
{
  result();
}

function result(){
   alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
}
</script>
</c:if>
</head>
<body>
   <h3 id="log">회원 로그인 창</h3>
   <DIV id="detail_table">
   <form action="${contextPath}/member/login.do" method="post">
      <TABLE>
         <TBODY>
            <TR class="dot_line">
               <td class="fixed_join">아이디</td>
               <TD><input name="member_id" type="text" size="20" class="search_m"/></TD>
            </TR>
            <TR class="solid_line">
               <TD class="fixed_join">비밀번호</TD>
               <TD><input name="member_pw" type="password" size="20" class="search_m"/></TD>
            </TR>
         </TBODY>
      </TABLE>
      <br><br>
      <INPUT   type="submit" value="로그인" id="log_btn"> 
      <INPUT type="button" value="초기화" id="res_btn">
      
      <Br><br>
         <a href="#" id="one">아이디 찾기</a>  | 
         <a href="#" id="two">비밀번호 찾기</a> | 
         <a href="${contextPath}/member/addMember.do" id="three">회원가입</a>    | 
         <a href="#" id="four">고객 센터</a>
                  
   </form>      
</body>
</html>