<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <title>Header</title>
  <style>
    *{
      margin: 0;
      padding: 0;
      text-decoration: none;
      /* border: 1px solid red; */
    }
    .header {
    width: 1480px;
    margin: 0 auto;
    height: auto;
    
    }
    .header_topnav { 
      font-size: 12px;
      margin: 10px;
      display: flex;
      justify-content: flex-end;
    }
    .header_topnav a {
      color: darkgrey;
      margin-right: 15px;
    }
    .img {
      margin: auto;
      display: flex;
      justify-content: center;
    }
    /* header nav 시작 */
    .header_nav {
      height: 35px;
      background-color: #F27078;
      display: flex;
      flex-flow: row nowrap;
      justify-content: center;
      position: sticky;
      z-index: 1000;
      left: 0px;
      top: 0px;
    }
    .header_nav a {
      padding: 0 40px;
      padding-top: 3px;
      color: rgb(61, 53, 53);
      font-weight: bold;
      font-size: 18px;
    }
    .input {
      margin: 5px;
      margin-left: 40px;
      background-color: rgb(231, 218, 218);
      border-radius: 15px;
    }
    .serch {
      margin: 0 6px;
      height: 20px;
      border: none;
      background-color: rgb(231, 218, 218);
      border-bottom: 0.5px solid #c9c2c2;
      outline: none;
    }
/* 드롭다운 */
.dropdown {
    position: relative;
    display: inline-block;
  display: flex;
  flex-flow: row nowrap;
}
.dropdown a{
  color: rgb(59, 56, 56);
}
.dropdown-content {
    display: none;
    flex-flow: column wrap;
    margin-top: 35px;
    position: absolute;
    background-color: rgb(127, 138, 211);
    border: 0.05px solid rgb(228, 219, 219);
    z-index: 1;
}
.dropdown-content a {
  font-size: 14px;
  text-decoration: none;
  color: rgb(59, 56, 56);
}
.dropdown:hover .dropdown-content {
  display: block;
  background-color: white;
}
.dropdown:hover .dropbtn:hover {
  background-color: white;
  }
/* 캐러셀 */
.car {
  width: 1520px;
  margin: 0 auto;
}
/* section1 */
.section1 {
  width: 100%;
  height: 600px;
  padding: 0 100px;
  padding-top: 100px;
  /* border: 1px solid red; */ 
  /* background-color: rgb(245, 240, 240); */
}
.font1{
  font-size: 30px;
  text-align: center;
  font-weight: bold;
  color: rgb(27, 123, 123);
}
.section1 img {
  width: 200px;
}

/* section2 */
.section2 {
  width: 100%;
  height: 1000px;
  /* border: 1px solid red;  */
}
.font2 {
  text-align: center;
  font-size: 30px;
  color: #F27078;
}
.event {
  display: flex;
  flex-flow: column nowrap;
  align-items: center;
}
.event img {
  width: 1000px;
  margin-top: 30px;
}
/* 백투탑 */
.back-to-top {
  cursor: pointer;
  position: fixed;
  bottom: 20px;
  right: 10px;
  display: none;
   z-index: 9999;
  }   

/* footer */
.footer01 {
      text-align: center;
      padding-top: 50px;
      background-color: #333;
      margin-top: 100px;
    }
    .footer01 a {
      color: white;
      font-size: 14px;
      margin: 0 8px 0 8px;
    }
    .footer01 ul, li {
      display: inline-block;
    }
    .footer01 li+li::before {
      content: "";
      display: inline-block;
      width: 1px;
      height: 15px;
      margin: 0 5px 0 2px;
      background-color: rgba(192, 186, 186, 0.333);
      vertical-align: -1px;
    }
    .footer02 {
      background-color: #333;
      color: #999;
      text-align: center;
      font-size: 14px;
    }
    .footer02 ul {
      margin: 0;
      padding: 20px 0 40px 0;
    }
    .footer02 li {
      padding: 0 3px;
    } 

 </style>
</head>
<body>
  
  <div class="header">
    <div class="header_topnav">
      <a href="login">로그인</a>
      <a href="register">회원가입</a>
    </div>
    <div class="img">
      <img style="width: 220px;" src="https://ifh.cc/g/5Gy0b5.png" alt="">
    </div>
  </div>
  <!-- 드롭다운 -->
  <div class="header_nav">
       <div class="dropdown">
          <a class="dropbtn" href="">ABOUT</a>
          <div class="dropdown-content">
            <a href="https://www.website.com">공지사항</a>
            <a href="https://www.website.com">회사소개</a>
            <a href="https://www.website.com">오시는길</a>
            <a href="https://www.website.com">이벤트</a>
          </div>
      </div>

      <div class="dropdown">
        <a class="dropbtn" href="">DESSERT</a>
        <div class="dropdown-content">
          <a href="https://www.website.com">마카롱</a>
          <a href="https://www.website.com">머핀</a>
          <a href="https://www.website.com">CAKE</a>
          <a href="https://www.website.com">BREAD</a>
        </div>
    </div>

    <div class="dropdown">
      <a class="dropbtn" href="">DRINK</a>
      <div class="dropdown-content">
        <a href="https://www.website.com">Name1</a>
        <a href="https://www.website.com">Name1</a>
        <a href="https://www.website.com">Name1</a>
        <a href="https://www.website.com">Name1</a>
      </div>
  </div>

  <div class="dropdown">
    <a class="dropbtn" href="">고객센터</a>
    <div class="dropdown-content">
      <a href="https://www.website.com">상품후기</a>
      <a href="https://www.website.com">상품문의</a>
      <a href="https://www.website.com">이용약관</a>
      <a href="https://www.website.com">이용약관</a>
    </div>
</div>
          
          
   

<div class="input"><input class="serch"  type="text" value=""></div>

</div>
  <!--캐러샐  -->
<div class="car">
<div id="demo" class="carousel slide align-center" data-ride="carousel" > 
  <div class="carousel-inner"> 
    <!-- 슬라이드 쇼 --> 
    <div class="carousel-item active"> <!--가로--> 
      <img class="d-block w-100" src="https://ifh.cc/g/Fbjjqj.jpg" alt="First slide"> 
      <div class="carousel-caption d-none d-md-block">
        <!-- <h1>Creative web Design</h1>
        <p>정직과 신뢰, 디자인을 최우선으로 생각하며 고객과 함께 할 수 있는
          든든한 파트너가 되도록 최선을 다합니다.</p> -->
      </div>
    </div>
    <div class="carousel-item"> 
      <img class="d-block w-100" src="https://ifh.cc/g/0HMZex.jpg" alt="Second slide"> 
      <div class="carousel-caption d-none d-md-block">
        <!-- <h1>Versatile web Design</h1>
        <p>다양한 기업환경에 적용이 가능한 디자인으로 보다 큰 만족과 감동을
          드리도록 최선을 다합니다.</p>
      </div> -->
    </div> 
    <!-- <div class="carousel-item"> 
      <img class="d-block w-100" src="" alt="Third slide"> 
      <div class="carousel-caption d-none d-md-block">
        <h1>Responsive web Design</h1>
        <p>PC 및 모바일에서 접속하는 디바이스 환경에 최적으로 대응하는
          반응형디자인으로 고객만족을 최우선으로 합니다.</p>
      </div>
    </div> -->
   </div>
    <!-- / 슬라이드 쇼 끝 --> 
    <!-- 왼쪽 오른쪽 화살표 버튼 --> 
    <a class="carousel-control-prev" href="#demo" data-slide="prev"> 
      <span class="carousel-control-prev-icon" aria-hidden="true"></span> 
      <!-- <span>Previous</span>  -->
    </a> 
    <a class="carousel-control-next" href="#demo" data-slide="next"> 
      <span class="carousel-control-next-icon" aria-hidden="true"></span> 
      <!-- <span>Next</span>  -->
    </a> <!-- / 화살표 버튼 끝 --> 
    <!-- 인디케이터 --> 
    <ul class="carousel-indicators"> 
      <li data-target="#demo" data-slide-to="0" class="active"></li> 
      <!--0번부터시작--> 
      <li data-target="#demo" data-slide-to="1"></li> 
      <li data-target="#demo" data-slide-to="2"></li> 
    </ul> <!-- 인디케이터 끝 --> 
  </div>
</div>        
<!-- section1 -->
<div class="section1">
  <div class="font1">
    <p>인기 메뉴</p>
  </div>
  <img src="https://ifh.cc/g/WB7azG.jpg" alt="">
  <img src="https://ifh.cc/g/WB7azG.jpg" alt="">
  <img src="https://ifh.cc/g/WB7azG.jpg" alt="">
  <img src="https://ifh.cc/g/WB7azG.jpg" alt="">
  <img src="https://ifh.cc/g/WB7azG.jpg" alt="">
  <img src="https://ifh.cc/g/WB7azG.jpg" alt="">
</div>
<!-- section2 -->
<div class="section2">
<div class="font2">
  <p>EVENT</p>
</div>
<div class="event">
  <a href=""><img src="https://ifh.cc/g/NggSmr.jpg" alt=""></a>
  <a href=""><img src="https://ifh.cc/g/NggSmr.jpg" alt=""></a>
  <a href=""><img src="https://ifh.cc/g/NggSmr.jpg" alt=""></a>
</div>
</div>
<!-- 백투탑 -->
<a id="back-to-top" href="#" class="back-to-top" role="button" title="" data-toggle="tooltip" data-placement="left" data-original-title="" style="display: block;">
  <img src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/icon-top.png">
</a>
<!-- footer -->
<div class="footer01">
  <ul>
    <li><a href="#">회사소개</a></li>
    <li><a href="#">개인정보보호정책</a></li>
    <li><a href="#">이용약관</a></li>
    <li><a href="#">1:1문의</a></li>
    <li><a href="#">오시는길</a></li>
  </ul>
</div>
<div class="footer02">
  <div class="address">
    회사 : 디져트사업, 주소 : 경기도 고양시 삼송로 193번길 디져트빌딩 401호, 대표 : 이태호 <br>
    고객지원 : 010-2709-08**, FAX : 070-777-5555, EMAIL : dessert@daum.net, 사업자등록번호 : 780-42-000**, 통신판매업 : 제2015-경기-009**호
  </div>
  <div class="copy">
    COPYRIGHT(C) 2020 FIVESTONE. ALL RIGHT RESERVED.
  </div>
  <div>
    <ul>
      <li><a href="#"><img src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/mf-icon01.png" alt=""></a></li>
      <li><a href="#"><img src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/mf-icon02.png" alt=""></a></li>
      <li><a href="#"><img src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/mf-icon03.png" alt=""></a></li>
      <li><a href="#"><img src="http://bdmp-004.cafe24.com/bizdemo99969/img/common/mf-icon04.png" alt=""></a></li>
    </ul>
  </div>
</div>







<script> 
  $('.carousel').carousel({ 
      interval: 1200, //(3초)기본 5초 
      keyboard: true,
      pause: 'hover',
      slide: false,
      wrap: true,
      touch: true
    }) 
    </script>
<script>
  $(document).ready(function(){
    $(window).scroll(function () {
      if ($(this).scrollTop() > 50) {
        console.log('fadeIn');
        $('#back-to-top').fadeIn();
      } else {
        console.log('fadeOut');
        $('#back-to-top').fadeOut();
      }
    });
    // scroll body to 0px on click
    $('#back-to-top').click(function () {
      console.log('click');
      $('#back-to-top').tooltip('hide');
      $('body,html').animate({
        scrollTop: 0
      }, 500);
      return false;
    });
    $('#back-to-top').tooltip('show');
  });
  $('.carousel').carousel({ 
    interval: 2000 //기본 5초 
  }) 
  </script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>