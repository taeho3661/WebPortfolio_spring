<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- views/sevice/inquiry.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

 
<!-- include libraries(jQuery, bootstrap) -->
<!-- summernote홈페이지에서 받은 summernote를 사용하기 위한 코드를 추가 -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
 
<!-- include summernote css/js -->
<!-- 이 css와 js는 로컬에 있는 것들을 링크시킨 것이다. -->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
 
<style>
    .inquiry_table {
      border: 1px solid rgb(216, 174, 174);
      width: 1000px;
      padding: 50px;
      margin: 0 auto;
    }
     .inquiry_h2 {
      width: 800px;
      margin: 30px auto;
       font-weight: bold;
    }
  </style>


</head>
<body>

<!-- 헤더 인클루드 -->
<jsp:include page="../main/header.jsp" />


<script>
//id가 description인 것을 summernote 방식으로 적용하라는 의미이다.
//높이와 넓이를 설정하지 않으면 화면이 작게 나오기때문에 설정해주어야 한다.
$(function(){
    $("#description").summernote({
        height : 400,
        width : 800
    });
});
</script>
 
<div style="width: 1280px; margin: 0 auto; margin-top: 50px;">
	<h2 class="inquiry_h2">리뷰 등록</h2>
	<form class="inquiry_table" name="form1" method="post"
	    enctype="multipart/form-data">
	<table>
	    <tr>
	        <td>상품명</td>
	        <td><input name="product_name" id="product_name"></td>
	    </tr>
	    <tr>
	        <td>가격</td>
	        <td><input name="price" id="price"></td>
	    </tr>
	    <tr>
	        <td>상품설명</td>
	        <td><textarea rows="5" cols="60" 
	            name="description" id="description"></textarea>
	          
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
	            <input type="button" value="등록" 
	                onclick="javascript:product_write()">
	            <input type="button" value="목록"
	onclick="location.href='${path}/shop/product/list.do'">
	        </td>
	    </tr>
	</table>    
	</form>
</div>
 
 <!-- 푸터 인클루드 -->
<jsp:include page="../main/footer.jsp" />

</body>
</html>



