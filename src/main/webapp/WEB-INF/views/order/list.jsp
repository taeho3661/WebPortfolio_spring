<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>리스트</title>
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
    margin-top: 20px;
    padding: 10px 0;

    width: 1280px;

    border-bottom: 0.5px solid lightgray;
    display: flex;
  }
  .sortBox{
  	position: absolute;
  	left: 1250px;
  	
  }
  /* a */
  .sortBox a{
    text-decoration: none;
    color: gray;
  }
  .sortBox a:hover{
    border-radius: 20px;
    text-decoration: none;
    background-color: wheat;
    color:sienna;
  }
  /*  */
  .section_content
  {
    width: 1280px;
  }
  .section_content_div{
    width: 280px;
    height: 480px;
    margin: 0 18px 80px 18px;
    border : .5px solid rgb(220, 220, 220);
    /* float하는이유 : 4개가 넘어가면 자동으로 아래에 붙게하기위해 */
    float : left; 


    /* 내부컨텐츠 정렬 */
    display: flex;
    flex-direction: column;    
  }
  .section_content > div > p{
    padding-top: 10px;
  }
  /* 이미지를 가둬놓기위한 툴 */
  .section_content div .img_tool{
    /* width: 275px; */
    width: 100%;
    height: 280px;
    
    overflow: hidden;
    /* border: 1px solid #F27078; */
  }
  .section_content div img{
    width: 280px;
    height: 280px;    
  }
  .section_content div img:hover{    
    /* 필터 */
    filter: brightness(1.08);
    /* 사이즈 */
    transform: scale(1.1, 1.1);
    transition: all .5s ease-in-out;  
  }
</style>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />

<div style="width:1280px; height:1200px; margin: 0 auto; margin-top: 50px; /* border:1px solid red; */">
  <c:if test="${item_name != null}">
	  <div class="section1" style="margin-bottom: 60px;">
	    <h4 style="font-size: 25px; margin-right: 60%;">검색어 : <span style="color:gray;">${ item_name }</span></h4>
	    <div class="sortBox">
	      <!-- 신상품은 시퀀스 번호로 / 가격은 item_price로 / 인기상품은 ?? -->
	      <a href="mainSearchSort?item_name=${ item_name }&sort_point=item_no&sort_method=desc">신상품</a>&nbsp;
	      <a href="mainSearchSort?item_name=${ item_name }&sort_point=item_price&sort_method=asc">낮은가격</a>&nbsp;
	      <a href="mainSearchSort?item_name=${ item_name }&sort_point=item_price&sort_method=desc">높은가격</a>&nbsp;
	      <a href="#">인기상품</a>
	    </div>
	  </div>
  </c:if>
  <c:if test="${item_name == null}">
	  <div class="section1" style="margin-bottom: 60px;">
	    <h4 style="font-size: 25px; margin-right: 70%;"><span style="color:gray;">${ item_type }</span></h4>
	    <div class="sortBox">
	      <!-- 신상품은 시퀀스 번호로 / 가격은 item_price로 / 인기상품은 ?? -->
	      <a href="listSort?item_type=${ item_type }&sort_point=item_no&sort_method=desc">신상품</a>&nbsp;
	      <a href="listSort?item_type=${ item_type }&sort_point=item_price&sort_method=asc">낮은가격</a>&nbsp;
	      <a href="listSort?item_type=${ item_type }&sort_point=item_price&sort_method=desc">높은가격</a>&nbsp;
	      <a href="#">인기상품</a>
	    </div>
	  </div>
  </c:if>
  <div class="section2">
    <div class="section_content">
      <c:forEach var="dto" items="${ list }">
        <div class="section_content_div">
          <div class="img_tool">
            <a href="item?item_no=${ dto.item_no }"><img alt="" src="/img/${ dto.item_img }"></a>
          </div><br>
          <div style="width: 240px; height: 80px; line-height: 80px; border-bottom:.5px solid rgb(220, 220, 220); padding-left: 10px;">
            <h3 style="font-size: 25px">${ dto.item_name }</h3>
          </div>
          <div style="width: 220px; height: 40px; line-height: 40px;">${ dto.item_name }</div>
          <div style="width: 220px; height: 40px; line-height: 40px; text-align: right;">${ dto.item_price }원</div>
        </div>
      </c:forEach>
    </div>
  </div>
</div>

<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />

</body>
</html>