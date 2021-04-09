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








</body>
</html>