<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<style>
*{
width: 100%;
margin: 0;
padding: 0;
}
header{
display: inline-block;
height: 100px;
text-align: center;
color: white;
background-color: rgba(0,0,255);
line-height: 100px;
}
nav{
display: inline-block;
height: 40px;
background-color: rgba(120,120,255);
line-height: 40px;
}
nav>ul>li{
display: inline;
margin: 20px;
}
section{
display: inline-block;
height: 900px;
background-color: rgba(200,200,200);
}
section>h1,p{
text-align: left;
padding: 12px 50px; /* 상하 좌우 */
}
section>h1{
text-align: center;
padding-top: 20px;
padding-bottom: 20px;
}
footer{
display: inline-block;
height: 100px;
text-align: center;
line-height: 100px;
background-color: rgba(50,50,255);
}
a{
color: white;
text-decoration: none;
}
</style>
</head>
<body>
<header><h1>쇼핑몰 회원관리 ver1.0</h1></header>
<nav>
<ul>
<li><a href="createmember.jsp">회원등록</a></li>
<li><a href="memberlist.jsp">회원목록조회/수정</a></li>
<li><a href="sales.jsp">회원매출조회</a></li>
<li><a href="index.jsp">홈으로.</a></li>
</ul>
</nav>
<section>
<h1>쇼핑몰회원관리 프로그램</h1>
<p><pre>
쇼핑몰회원정보와 회원출정보 데이터 베이스를 구축하고 회원관리 프로그램을작성하는 프로그램이다.
프로그램 작성 순서
1.회원정보 테이블을 생성하다.
2.매출정보 테이블을 생성한다.
3.회원정보,매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.
4.회원정보 입력 화면프로그램을 작성한다.
5.회원정보 조회 프로그램을 작성한다.
6.회원매출정보 조회 프로그램을 작성한다.!!!!!!!!!!!!!
</pre></p>
</section>
<footer><h2>HRDKOREA Copyrightⓒ2016 All right reserved Human Development Service of Korea</h2></footer>
</body>
</html>