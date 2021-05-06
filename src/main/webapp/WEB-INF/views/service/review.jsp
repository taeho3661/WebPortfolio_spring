<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<jsp:include page="../main/header.jsp" />


<!DOCTYPE html>
<html lang="en">
<head>

   
 
  
  <title>Header</title>
  <style>
 .inquiry_form {
    border: 1px solid rgb(228, 197, 197);
    background-color: rgb(240, 237, 237);
    width:  570px;
    height: 450px;
    padding: 50px;
    margin: 0 auto;
    border-radius: 5px;
  }
  .inquiry_h2 {
    text-align: center;
    width: 800px;
    margin: 30px auto;
    font-weight: bold;
}
  .inquiry_table {
    padding: 10px;
    color: rgb(64, 59, 59);
  }
 
  .content {
    height: 270px;
    width: 450px;
    margin: 15px 2px;
  }
  .Bselect {
    margin: 5px 2px;
    height: 26px;
  }
  .Bname {
    margin: 3px 2px;
    height: 26px;
    width: 450px;
  }
  .Bfile {
    margin: 5px 3px;
    height: 25px;
  }
 </style>
 
   
 
</head>


<body>

   
  <div style="width: 1280px; margin: 0 auto; margin-top: 50px;">
    <h2 class="inquiry_h2">1:1 문의</h2>
    <form class="inquiry_form" action="reviewAdd" name="form2" method="post"
        enctype="multipart/form-data">
    <table class="inquiry_table">
        <tr >
            <td > 카테고리 </td>
            <td >
                <select class="Bselect" name="board_type">
                  <option value="crepe">crepe</option>
                  <option value="muffin">muffin</option>
                  <option value="cake">cake</option>
                  <option value="tea">tea</option>
                  <option value="cheong">cheong</option>
                  <option value="coffee">coffee</option>
                  <option value="smoothie">smoothie</option>
                </select>
            </td>
        </tr>
        <tr >
            <td >제목</td>
            <td ><textarea class="Bname" rows="1" cols="20" name="board_name" id="product_name"></textarea></td>
        </tr>
        
        <tr >
            <td >내용</td>
            <td ><textarea class="content" rows="5" cols="60" 
                name="board_content" id="description"></textarea>
              
            </td>
        </tr>
        <tr >
            <td >상품이미지</td>
            <td>
                <input class="Bfile" type="file" name="file1" id="file1"> 
            </td>
        </tr>
        <tr >
            <td  colspan="2" align="center">
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

<jsp:include page="../main/footer.jsp" />