<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
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
    .wrap
    { 
      font-family: 'Noto Sans JP', sans-serif; /* ��Ͽ� �����°�. */
      list-style: none;   /* ����������. */
      text-decoration: none; /* ���̺� ���� */
      border-collapse: collapse ;
      margin:auto;
      padding:0px;
      color:black;
      height: auto;
      width: 1200px;
    }

 
    .joinheader{
      margin: 46px 0 9px;
      color: #4e4748;
      font-size: 18px;
    }
    .join{
      font-size: 11px;
      
      
      width: 1280px;
      height: auto;
      margin: 30px auto auto auto;
    }
    .main{
      display: flex;
      margin-left: 15px;
      margin-top: 10px;
    }
    .join_textside{
      width: 150px;
      height: 45px;
      
  
    }
    .textbox{
      margin-left: 15px;
      margin-right: 15px;
    }
    .join_ID{
      
      
    }
    .Line{
      border-bottom:1px solid #DDDDDD;
    }
    .join_ID > input{
      width: 168px;
      height: 24px;
    }
    #join_ID_Check{
      display: inline-block;
      text-align: center;
      color: #fff;
      cursor: pointer;
      border: 1px solid #fff;
      padding: 0 8px;
      height: 22px;
      line-height: 22px;
      font-size: 7px;
	  text-decoration: none;
    }

    .join_Password > input{
      width: 168px;
      height: 24px;
      
    }
    #hint{
      margin-left: 15px;
      height: 24px;
      margin-top: 5px;
    }
    
    .join_Passwordcheck > input{
      width: 168px;
      height: 24px;
    }
    
    
    .join_textside_Address{
      width: 151px;
      height: 150px;
      
    }

    .join_Name > input{
      width: 168px;
      height: 24px;
    }
    .agree {
    border: 1px solid #e7e7e7;
    color: #757575;
    font-size: 11px;
    line-height: 20px;
    overflow: auto;
    height: 160px;
    padding: 20px;
    
    }
    .sample2_address{
      width: 56px;
      height: 24px;
      
    }
    .sample2_address{
      width: 120px;
      height: 24px;
      
    }
    .sample2_address2{
      margin-left: 15px;
      margin-top: 7px;
      
      width: 510px;
      height: 24px;
    }
    .sample2_button{
      width: 82px;
      height: 24px;
      margin-left: 15px;
    }
    .phonetext > input{
      width: 160px;
      height: 24px;
      
    }
    #phone1{
      margin-left: 15px;
      
      width: 60px;
      height: 24px;
    }
    #exampleInputEmail1{
      margin-left: 15px;
      height: 24px;
      width: 500px;
      margin-bottom: 35px;
    }
    .lastbutton{
      display: flex;
      justify-content: center;
      
    }
    .lastbutton > a{
      margin: 7px;
    }
    .lastbutton_member{
      margin: 7px;
    }
  	.lastbutton{
      display: flex;
      justify-content: center;
      
    }
    .lastbutton > a{
      margin: 7px;
    }
    .lastbutton_member{
      margin: 7px;
    }
    .lastbutton_member2{
      display: flex;
      justify-content: flex-end;
      
    }
    .lastbutton_member2 > input{
      margin: 7px 7px 7px 7px;
      background-color: darkgrey;
      
      
    }
  	#email{
      height: 40px;
    }
  
  </style>

  

 <jsp:include page="../main/header.jsp" />


<div class= "wrap">
  
  <form action="aaa.jsp" method="POST">
    <div class="join ">
      <div class="joinheader">�ʼ��׸��Դϴ�</div>
      <div class="join_ID main Line ">
        <div class="join_textside">���̵� </div>
        <input type="text" class="form-control textbox">
        <a href="#none" title="��â ����" onclick="checkIdLayer('/member/check_id.html')" id="join_ID_Check" class="btn-secondary btn-lg ">���̵� �ߺ�üũ</a>
      </div>
      <div class="join_Password main Line">
        <div class="join_textside">�����ȣ</div>
        <input type="text" class="form-control textbox" >
    
      </div>
      <div class="join_Passwordcheck main Line">
        <div class="join_textside">�����ȣ Ȯ��</div>
        <input type="text" class="form-control textbox" >
      </div>

      <div class="join_Passwordcheck main Line">
        <div class="join_textside">�̸�</div>
        <input type="text" class="form-control textbox" >
        
      </div>

      

      <div class="main Line">
        <div class="join_textside_Address ">�ּ�</div>



        <div>
          
          <!-- iOS������ position:fixed ���װ� ����, �����ϴ� ����Ʈ�� �°� position:absolute ���� �̿��Ͽ� top,left�� ���� �ʿ� -->
          <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
          <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="�ݱ� ��ư">
          </div>
          <input type="text" id="sample2_postcode" placeholder="�����ȣ" style="width:200px; height:30px;  margin-left: 15px;">
        <input type="button" onclick="sample2_execDaumPostcode()" value="�ּ� ã��" style="width:80px; height:30px;  margin-left: 5px; padding: 0px; "><br>
        <input type="text" id="sample2_address" placeholder="�ּ�" style="width:200px; height:30px; margin-top: 10px; margin-left: 15px;"><br>
        <input type="text" id="sample2_detailAddress" placeholder="���ּ�" style="width:200px; height:30px; margin-top: 10px; margin-left: 15px;">
        <input type="text" id="sample2_extraAddress" placeholder="�����׸�" style="width:80px; height:30px; margin-top: 10px; margin-left: 5px; " >

        <!-- iOS������ position:fixed ���װ� ����, �����ϴ� ����Ʈ�� �°� position:absolute ���� �̿��Ͽ� top,left�� ���� �ʿ� -->
        <div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
          <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="�ݱ� ��ư">
        </div>

        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>
            // �����ȣ ã�� ȭ���� ���� element
            var element_layer = document.getElementById('layer');

            function closeDaumPostcode() {
                // iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
                element_layer.style.display = 'none';
            }

            function sample2_execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function(data) {
                        // �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                        // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                        // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                        var addr = ''; // �ּ� ����
                        var extraAddr = ''; // �����׸� ����

                        //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                        if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                            addr = data.roadAddress;
                        } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                            addr = data.jibunAddress;
                        }

                        // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
                        if(data.userSelectedType === 'R'){
                            // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                            // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                            if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                                extraAddr += data.bname;
                            }
                            // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                            if(data.buildingName !== '' && data.apartment === 'Y'){
                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                            if(extraAddr !== ''){
                                extraAddr = ' (' + extraAddr + ')';
                            }
                            // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
                            document.getElementById("sample2_extraAddress").value = extraAddr;
                        
                        } else {
                            document.getElementById("sample2_extraAddress").value = '';
                        }

                        // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                        document.getElementById('sample2_postcode').value = data.zonecode;
                        document.getElementById("sample2_address").value = addr;
                        // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                        document.getElementById("sample2_detailAddress").focus();

                        // iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
                        // (autoClose:false ����� �̿��Ѵٸ�, �Ʒ� �ڵ带 �����ؾ� ȭ�鿡�� ������� �ʴ´�.)
                        element_layer.style.display = 'none';
                    },
                    width : '100%',
                    height : '100%',
                    maxSuggestItems : 5
                }).embed(element_layer);

                // iframe�� ���� element�� ���̰� �Ѵ�.
                element_layer.style.display = 'block';

                // iframe�� ���� element�� ��ġ�� ȭ���� ����� �̵���Ų��.
                initLayerPosition();
            }

            // �������� ũ�� ���濡 ���� ���̾ ����� �̵���Ű���� �ϽǶ�����
            // resize�̺�Ʈ��, orientationchange�̺�Ʈ�� �̿��Ͽ� ���� ����ɶ����� �Ʒ� �Լ��� ���� ���� �ֽðų�,
            // ���� element_layer�� top,left���� ������ �ֽø� �˴ϴ�.
            function initLayerPosition(){
                var width = 300; //�����ȣ���񽺰� �� element�� width
                var height = 400; //�����ȣ���񽺰� �� element�� height
                var borderWidth = 5; //���ÿ��� ����ϴ� border�� �β�

                // ������ ������ ������ ���� element�� �ִ´�.
                element_layer.style.width = width + 'px';
                element_layer.style.height = height + 'px';
                element_layer.style.border = borderWidth + 'px solid';
                // ����Ǵ� ������ ȭ�� �ʺ�� ���� ���� �����ͼ� �߾ӿ� �� �� �ֵ��� ��ġ�� ����Ѵ�.
                element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
                element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
            }
        </script>
        </div>

      </div>



      <div class="main Line phonetext">
        <div class="join_textside">�޴���ȭ</div>
        <input type="text" class="form-control textbox " >
      </div>

      <div class="main Line" id="email">
        <div class="join_textside">�̸���</div>
        <div class="mb-3">
          <input type="email" class="form-control email" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
      </div>
      
	<div class="lastbutton">
      <input type="submit" class="btn btn-secondary btn-lg lastbutton_member" value="ȸ������ ����"></input>
      <a class="btn btn-secondary btn-lg" a href="main.jsp">���</a>
      <div class="lastbutton_member2">
        <input type="submit" class="btn btn-secondary btn-lg " value="ȸ��Ż��"></input>
      </div>
    </div>
	




    </div> <!-- join main �κ�-->
</form>
</div> <!-- wrap-->
 <jsp:include page="../main/footer.jsp" />
</body>
</html>