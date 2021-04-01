<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title></title>
</head>
<style>
  *{
    margin: 0 auto;
    padding: 0;

    box-sizing: border-box;
    /* overflow: hidden; */
    /* 디버깅용 라인 */
    /* border: 1px solid red; */
  }
  .headerDiv{
    width: 1280px;
  }
  .logOutButton{
    text-align: right;
  }
  .logOutButton > button{
    width: 80px;
    height: 30px;
  }
</style>
<body>
  <div class="logOutButton headerDiv">
    <button>로그아웃</button>
  </div>
  <div class="headerDiv" style="text-align: center;">
    <img src="https://ifh.cc/g/5Gy0b5.png" alt="" style="height: 150px;">
  </div>
  <div class="headerDiv" style="text-align: center; height: 150px; line-height: 150px; border: .5px solid gray; background-color: #FDD692;">
    <h1>관리자 페이지</h1>
  </div>
  
</body>
</html>