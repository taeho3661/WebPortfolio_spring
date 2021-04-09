<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>오시는길</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      color: #4e4e4e;
      /* border: 1px solid red; */
    }
    
    
    .wrap {
      border: 0.5px solid rgb(225, 212, 212);
      margin: 50px auto;
      width: 1000px;
      height: auto;
      display: flex;
      flex-flow: row nowrap;
    }
    .map {
      display: flex;
      flex-flow: column;
      align-items: center;
    }
    .section {
      padding-top: 30px;
      text-align: center;
      font-style:oblique;
      font-size: 20px;
    }
    .aside {
      width: 40%;
      text-align: center;
      background-color: white;
      font-size: 20px;
      color: rgb(47, 43, 43);
      border-right: 0.5px solid rgb(225, 212, 212);
    }
    
    .aside a {
      text-decoration: none;
      color: rgb(42, 41, 41);
    }
    .aside div {
      height: 50px;
      border: 0.5px solid rgb(225, 212, 212);
    }
    .aside div:hover {
      background-color: rgb(220, 186, 186);
    }
    .dir {
      width: 100%;
      padding-top: 20px;
      text-align: center;
      font-size: 50px;
      font-weight: bold;
    }

    
  </style>
</head>
<body>
 
  <div class="dir">Direction </div>
  <div class="wrap">
    <div class="aside">
      <div style="color: teal;">ABOUT</div>
      <div><a href="">회사소개 ></a></div>
      <div style="background-color: rgb(220, 186, 186);"><a href="">오시는길 ></a></div>
      <div><a href="">이용약관 ></a></div>
    </div>
    <div class="map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25271.013891919098!2d127.0729749899816!3d37.65210187124124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cb9403a11dfbf%3A0x69d697eb7e2ebe70!2z64W47JuQ7Jet!5e0!3m2!1sko!2skr!4v1615967935547!5m2!1sko!2skr" width="500" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      <div class="section">
        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Perferendis quibusdam voluptatibus natus vel deserunt repellat explicabo, laborum, corrupti nostrum nulla culpa suscipit, quo officiis at commodi repellendus praesentium. Voluptas, error.
      </div>
    </div>


  </div>
  
</body>
</html>