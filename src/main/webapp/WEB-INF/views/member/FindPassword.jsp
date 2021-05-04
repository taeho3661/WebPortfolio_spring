<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@500&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <style>
    .login
    { 
      font-family: 'Noto Sans JP', sans-serif; /* 목록에 점없는거. */
      list-style: none;   /* 밑줄점없앰. */
      text-decoration: none; /* 테이블 붙임 */
      border-collapse: collapse ;
      margin: 200px 0px 0px 0px;
      padding:0px;
      color:black;
    }

    
    .login{
      margin-top: 200px;
      font-size: 30px;
    }
    .login_ID{
 
      justify-content: center;
      
    }
    .login_IDbutton{
      display: flex;
      
      justify-content: center;
      font-size: 13px;
      
      margin-bottom: 10px;
      
    }
    
    
   
    .login_Member{
      justify-content: center;
      display: flex;
      
    }
    .login_Member  > input{
      margin-top: 15px;
      margin-left: 8px;
      height: 50px;
      font-size: 16px;
    }
    .login_Member :nth-child(1){
      width: 205px;
    }
    
    
    .login_text{
      
      margin: 10px 15px 10px 0px; /* 위 우 아래 좌 */
      width: 70px;
      height: auto;
      justify-content: center;
      
    }
    
    .login_input {
    display: block;
    
    height: calc(1.5em + .75rem + 2px);
    padding: .375rem .75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
	}
   
  </style>
  


<jsp:include page="../main/header.jsp" />


<div class= "wrap">
  <div class="header">
	
  </div>
  
  <div class="login">
    <form action="findpasswordAction" method="POST">
      <div class="login_ID">
        <div class="login_IDbutton">
          <div class="login_text">아이디</div>
          <input type="text" class="login_input" placeholder="아이디" name="user_id">
        </div>
        <div class="login_IDbutton">
          <div class="login_text">이름</div>
          <input type="text" class="login_input" placeholder="이름" name="user_name">
        </div>
        <div class="login_IDbutton">
          <div class="login_text">이메일</div>
          <input type="text" class="login_input" placeholder="이메일" name="user_email">
        </div>
      </div>
    

    <div class="login_Member">
    
        <input type="submit" class="btn btn-secondary btn-lg " value="확인"></input>
        
      
    </div>

    </form>

  </div>

	
  
</div>


<jsp:include page="../main/footer.jsp" />

</body>
</html>



