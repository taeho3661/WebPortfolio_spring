
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이 페이지</title>

<jsp:include page="../main/header.jsp" />

  <style>
    .mypage_wrap {
      width: 700px;
      margin: 100px auto;
      padding: 0;
      font-size: 15px;
    }

    .mypage_introduce {
      border-bottom: 0.5px solid rgb(235, 238, 235);
      border-top: 2px solid rgb(184, 186, 184);
      padding: 10px;
      padding-bottom: 20px;
    }
    .mypage_table1 {
      margin-top: 20px;
      padding: 5px;
      border-bottom: 0.5px solid rgb(235, 238, 235);
      border-top: 2px solid rgb(184, 186, 184);
      text-align: center;
    }
    .mypage_table1 th {
      width: 160px;
      padding-bottom: 10px;
    }
    .mypage_table2 {
      margin-top: 20px;
      border-top: 2px solid rgb(184, 186, 184);
    }
    .mypage_table2 th {
      width: 180px;
    }
    .mypage_table2 td {
      font-size: 13px;
      width: 800px;
      
    }
    .mypage_table2 * {
      border-bottom: 0.5px solid rgb(235, 238, 235);
      padding: 7px;
    }
    
  </style>
</head>
<body >
  <div class="mypage_wrap">
  <div class="mypage_introduce">
    <p>저희 쇼핑몰을 이용해 주셔서 감사합니다. <strong class="mapage_name">${user.user_name }</strong> 님은 [<strong class="mapage_group">
    
    
    <%--적립금에 따른 유저 등급 --%>
    <c:if test="${user.user_score < '100000'}">
    	브론즈
    </c:if>
    
    <c:if test="${user.user_score >= '100000' && user.user_score < '200000'}">
    	실버
    </c:if>
    
    <c:if test="${user.user_score >= '200000' && user.user_score < '300000' }">
    	골드
    </c:if>
    
    <c:if test="${user.user_score >= '300000' }">
    	다이아
    </c:if>
    
    </strong>] 회원이십니다.</p>
  </div>
   <div class="mypage_table1">
     <table>
       <tr>
         <th>가용적립금</th>
         <th>총적립금</th>
         <th>사용적립금</th>
         <th>총주문</th>
       </tr>

       <tr>
        <td>0원</td>
        <td>0원</td>
        <td>0원</td>
        <td>${user.user_score }원</td>
      </tr>
     </table>
   </div>

   <div class="mypage_table2">
     <table>
       <tr>
         <th><a href=orderHistory>주문내역조회</a></th>
         <td>고객님께서 주문하신 상품의 주문내역을 확인하실 수 있습니다.</td>
       </tr>

       <tr>
        <th><a href=Modify>회원 정보 수정</a></th>
        <td>회원이신 고객님의 개인정보를 관리하는 공간입니다.</td>
      </tr>

      <tr>
        <th><a href=basketList>장바구니 조회</a></th>
        <td>관심상품으로 등록하신 상품의 목록을 보여드립니다.</td>
      </tr>

      <tr>
        <th><a href="inquiry">관리자 문의</a></th>
        <td>고객님의 궁심하신 문의사항에 대하여 1:1맞춤상담 내용을 확인하실 수 있습니다.</td>
      </tr>
     </table>
   </div>
</div>

<jsp:include page="../main/footer.jsp" />
</body>
</html>