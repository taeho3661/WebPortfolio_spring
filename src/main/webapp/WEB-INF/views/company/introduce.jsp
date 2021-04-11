<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>소개</title>
</head>
<style>
  /* 공통설정 */
  *{
    margin: 0 auto;
    padding: 0;
    /* overflow: hidden; */
    box-sizing: border-box;
    color: #4e4e4e;
        
    /* 임시 폰트 */
    /* font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; */
    /* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
  }
  /* 섹션 */
  .section{
    /* background-color: cyan; */
    width: 1280px;
    height: 800px;
    margin: 0 auto;
    /* border:1px solid red; */
  }
  .section h2{
    text-align: center;
  }
  .section_content
  {
    /* 소개1, 2, 3, 4 정렬 */
    display: flex;
  }
  .section_content > div{
    padding-top: 30px;
    width: 300px;
    height: 450px;
    padding-left: 20px;
    padding-right: 20px;    
​
    /* 내부컨텐츠 세로정렬 */
    display: flex;
    flex-direction: column;    
  }
  .section_content > div > p{
    padding-top: 10px;
  }
  /* 이미지를 가둬놓기위한 툴 */
  .section_content div .img_tool{
    width: 250px;
    height: 250px;
​
    overflow: hidden;
    /* border: 1px solid #F27078; */
  }
  .section_content div img{
    width: 250px;
    height: 250px;    
  }
  .section_content div img:hover{    
    /* 어둡게 */
    filter: brightness(80%);
    /* 사이즈 */
    transform: scale(1.1, 1.1);
    transition: all .5s ease-in-out;  
  }
  
  .section_info{
    padding: 30px;
    text-align: center;
  }
</style>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />

  <div class="section" style="margin-top: 50px;">
    <h2 style="font-size: 50px;">Introduce</h2>
    <div class="section_content">
      <div>
        <div class="img_tool">
          <img src="//www.cafeplay.co.kr/web/product/medium/201907/cb858589efbe54fab8b5948d2f18ce06.jpg" alt="">
        </div><br>
        <h3>temp1</h3>
        <p>
        Lorem ipsum dolor sit, amet consectetur adipisicing elit. 
        Velit, consectetur! similique temporibus dicta, 
        aliquid cupiditate, voluptate consequuntur iusto laudantium!</p>
      </div>
      <div>
        <div class="img_tool">
          <img src="//www.cafeplay.co.kr/web/product/medium/201908/2839c67ab50e7e732fec93db0ca3cb4d.jpg" alt="">
        </div><br>
        <h3>temp2</h3>
        <p>
        Lorem adipisicing elit. 
        Velit, consectetur! non excepturi tenetur similique temporibus dicta, 
        aliquid cupiditate, est rem quam iusto laudantium!</p>
      </div>
      <div>
        <div class="img_tool">
          <img src="//www.cafeplay.co.kr/web/product/medium/20200508/751d5a73b9b8f8fa657d8d28d194a636.jpg" alt="">
        </div><br>
        <h3>temp3</h3>
        <p>
        Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Impedit id maiores voluptatum aspernatur assumenda 
        ipsam nisi, eos iusto minima, porro magnam.
      </div>
      <div>
        <div class="img_tool">
          <img src="//www.cafeplay.co.kr/web/product/medium/201908/ae57500ecf1f8f2ae71c4ad7ecd315d9.jpg" alt="">
        </div><br>
        <h3>temp4</h3>
        <p>
        Lorem ipsum dolor sit, amet consectetur adipisicing elit. 
        Velit,tenetur 
        aliquid cupiditate, est rem quam consequuntur iusto laudantium!</p>
      </div>
    </div>
    <br><br><br>
    <h2>Lorem</h2>
    <div class="section_info">
      Lorem ipsum dolor sit amet consectetur adipisicing elit. 
      A praesentium modi nisi corporis accusantium rem vitae sunt quasi eius, 
      molestias voluptatibus provident dicta eaque ducimus illum commodi sed autem vel.
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum laborum 
      veritatis ratione. Beatae nobis possimus explicabo officiis, aperiam minima 
      sit, nesciunt ratione omnis eius recusandae debitis quidem natus, non quaerat.
    </div>
  </div>

<!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />

</body>
</html>