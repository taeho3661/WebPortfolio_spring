<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>장바구니</title>
</head>
<style>
  *{
    padding: 0;
    margin: 0 auto;
    /* border:1px solid red; */
  }
  input[type="button"], button{
    cursor:pointer;
  }
  .section1, .section2, .section3{
    width: 1280px;
  }
  .section1{
    width: 1280px;
    /* margin-top: 50px; */
  }
  .section1_con{
    padding: 10px;

    border-top: 2px solid black;
    border-bottom: 0.5px solid lightgray;

    height: 40px;
    background-color: rgb(250, 255, 240);
  }
  .section1_con > div{
    padding: 0 20px;

    height: 30px;
    float: left;
  }
  .section1_con > div:first-child{
    border-right: 1px solid lightgray;
  }
  .section2{
    /* border: 1px solid red; */
    margin-top: 50px;
  }
  .section2_title{
    /* padding-bottom: 1px; */
    width: 1280px;
    height: 50px;
  }
  .section2_title > div:first-child{
    width: 10%;
    height: 30px;
    text-align: center;
    line-height: 30px;

    padding: 0 30px;
    float:left;

    border: 1px solid lightgray;
    border-bottom: none;
    /* background-color: red; */
  }
  .section2_title > div:last-child{
    float: left;
    height: 30px;
    width: 84%;
    /* background-color: blue; */
    border-bottom: 1px solid lightgray;
  }
  .section2_table{
    margin-top: 20px;
    clear: both;
    width: 1280px;
    
    /* border: 1px solid lightgray; */
    border-collapse: collapse;

    text-align: center;
  }
  .section2_table tr{
    height: 80px;
  }
  .section2_table th, .section2_table td{
    margin: 0;
    padding: 0;
    border-bottom: .5px solid lightgray;
  }
  .section2_buttonArea{
    text-align: center;
    margin: 50px;
  }
  .section2_buttonArea input[type="button"],
  .section2_buttonArea input[type="submit"]{
    width: 200px;
    height: 50px;
    border: 1px solid gray;
  }
  #totalOrderButton{
    background-color: rgb(85, 85, 85);
    color: white;
  }
  #selectOrderButton{
    background-color: rgb(161, 161, 161);
    color: rgb(255, 255, 255);
  }
  #turnToShopping{
    background-color: white;
    color: rgb(82, 82, 82);
  }
  .section3{
    height: 300px;
    border: 1px solid red;
  }
</style>
<script>
function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsByName('order_no');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
	}
</script>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />

<div style="width: 1280px; margin:0 auto; margin-top: 50px;">
  <div class="section1">
    <h4>장바구니</h4>
    <div class="section1_con">
      <div>혜택정보</div>
      <div>
	    <c:if test="${user != null}">
	   		${ user.user_name }님은 
   			<a href="#" class="popper" data-popbox="pop1"> <!-- 이거추가하면 rankSystem 툴팁 적용됨 -->
			<jsp:include page="../main/rankSystem.jsp" />  <!-- 이거추가하면 rankSystem 툴팁 적용됨 -->
        		<strong>
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
			    </strong>
		    </a> 회원이십니다.		
	   	</c:if>
	  </div>
    </div>
  </div>
  <div class="section2">
  	<form action="order" method="post">
	    <div class="section2_title">
	      <div>배송상품</div>
	      <div></div>
	    </div>
	    <table class="section2_table">
	      <!-- th -->
	      <tr>
	        <th><input type="checkbox" name="order_no" value="" onclick='selectAll(this)'/></th>
	        <th style="width: 20%;">item</th>
	        <th style="width: 35%;"></th>
	        <th>수량</th>
	        <th style="width: 15%;">가격</th>
	        <th></th>
	      </tr>
	      <!-- tr -->
	      <c:forEach var="dto" items="${ list }">
	          <tr>
	            <td><input type="checkbox" name="order_no" value=${ dto.order_no }></td>
	            <td><img alt="" src="/img/${ dto.item_img }" style="height: 70px;"></td>
	            <td style="text-align: left;">${ dto.item_name }</td>
	            <td>${ dto.order_count }</td>
	            <td>${ dto.order_price }</td>
	            <td><a href="basketDelete?order_no=${ dto.order_no }"><input type="button" id="orderButton" value="삭제"
	             style="margin: 0 auto; border-radius: 10px; background-color: white;
	             border: 1px solid lightgray; width: 35%; height: 25px;"/></a></td>
	          </tr>
	      </c:forEach>  
	    </table>
	    <div class="section2_buttonArea">
	      <a href=""><input type="submit" value="전체상품주문" id="totalOrderButton"/></a>
	      <a href=""><input type="submit" value="선택상품주문" id="selectOrderButton"/></a>
	      <a href="./main"><input type="button" value="쇼핑계속하기" id="turnToShopping"/></a>
	    </div>
  	</form>
  </div>
  <div class="section3">
    <div>이용안내</div>
  </div>
</div>

<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />
</body>
</html>