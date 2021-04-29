<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>






<!DOCTYPE html>
<html lang="en">
<head>

   
 
  
  <title>Header</title>
  <style>
 .inquiry_table {
        border: 1px solid rgb(216, 174, 174);
        width:  800px;
        padding: 50px;
        margin: 0 auto;
      }
       .inquiry_h2 {
        width: 800px;
        margin: 30px auto;
         font-weight: bold;
      }
  

 </style>
 
 
 <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
   
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
   
 
</head>


<body>

<script>
  //id가 description인 것을 summernote 방식으로 적용하라는 의미이다.
  //높이와 넓이를 설정하지 않으면 화면이 작게 나오기때문에 설정해주어야 한다.
  $(function(){
      $("#description").summernote({
          height : 300,
          width : 600
      });
  });
  </script>
   
  <div style="width: 1280px; margin: 0 auto; margin-top: 50px;">
    <h2 class="inquiry_h2">1:1문의</h2>
    <form class="inquiry_table"  name="form1" method="post"
        enctype="multipart/form-data">
    <table>
       
        <tr>
            <td>상품명</td>
            <td><textarea rows="1" cols="20" name="board_name" id="product_name"></textarea></td>
        </tr>
        
        <tr>
            <td>상품설명</td>
            <td><textarea rows="5" cols="60" 
                name="board_content" id="description"></textarea>
              
            </td>
        </tr>
        <tr>
            <td>상품이미지</td>
            <td>
                <input type="file" name="file1" id="file1"> 
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="등록" 
                    >
                <input type="button" value="목록"
    			onclick="javascript:history.back()">
            </td>
        </tr>
    
    </table>    
    </form>
  </div>
   


</body>
</html>