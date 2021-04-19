
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>CKEditor 5 – Classic editor</title>
    <script src="https://cdn.ckeditor.com/ckeditor5/27.0.0/classic/ckeditor.js"></script>
</head>
<style>
  .ck .ck-editor_main > .ck-editor_editable {
    max-width: 800px;
    min-height: 500px;
}
*{
  margin:0;
}
.editor {
 margin: auto;
 width: 650px;
 height: auto;
 /* border: 1px solid red; */
 background-color: rgb(243, 243, 243);
}
.ck {
  width: 600px;
  height: 450px;
}
.password , .ask {
  margin: 13px;
}
.ask >input {
  width: 500px;
  height: 20px;
  margin-top: 10px;
  font-size: 15px;
}
.button > button{
  margin: 30px 0;
  width: 100px;
  height: 40px;
  background-color: rgb(92, 80, 117);
  color: white;
  border-radius: 10px; 
  
}
.button{
  display: flex;
  justify-content: center;
}

</style>
<body>
   
   <jsp:include page="../main/header.jsp" />
   
  <div class="editor">
	<form action="inquiryAction" method="post">
	    <div class="ask">
	      <h2>1:1문의</h2>
	      제 목  <input class="title" type="text" name="board_name" placeholder="제목을 입력하세요.">
	    </div>
	    <div>
	    	<textarea name="board_content" id="editor">
        	</textarea>
	    </div>
	<!--     
		비밀번호 추후 고려
		<div class="password">
	      비밀번호 <input type="password">
	    </div> -->
	    <hr>
	    <div class="button">
	      <input type="submit">
	    </div>
	</form>	
  </div>
  
    

    <script>
        ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .catch( error => {
                console.error( error );
            } );
    </script>
    
    <jsp:include page="../main/footer.jsp" />
</body>
</html>