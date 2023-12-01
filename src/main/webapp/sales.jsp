<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mylib.Member"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//여러데이터를 리스트에 담아서 아래쪽에서 한번에 출력한다.
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
String sql="select t1.custno custno, t2.custname custname, decode(t2.grade,'A','VIP','B','일반','C','직원') grade, sum(t1.price) price from MONEY_TB2_02 t1, MEMBER_TB1_02 t2  where t1.custno=t2.custno group by (t1.custno,t2.custname,t2.grade) order by sum(t1.price) desc";
PreparedStatement ps=conn.prepareStatement(sql);
ResultSet rs=ps.executeQuery();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<style>
*{
margin: 0;
padding: 0;
}
header{
width: 100%;
display: inline-block;
height: 100px;
text-align: center;
color: white;
background-color: rgba(0,0,255);
line-height: 100px;
}
nav{
width: 100%;
display: inline-block;
height: 40px;
background-color: rgba(120,120,255);
line-height: 40px;
}
nav>ul>li{
width: 100%;
display: inline;
margin: 20px;
}
section{
width: 100%;
display: inline-block;
height: 900px;
background-color: rgba(200,200,200);
}
section>h1{
text-align: center;
padding-top: 20px;
padding-bottom: 20px;
}
footer{
width: 100%;
display: inline-block;
height: 100px;
text-align: center;
line-height: 100px;
background-color: rgba(50,50,255);
}
table{
margin: auto;
text-align: center;
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
<h1>회원목록조회/수정</h1>
<table border="1" width="60%">
<tr>
	<th>회원번호</th>
	<th>회원성명</th>
	<th>고객등급</th>
	<th>매출</th>
</tr>
<%while(rs.next()) { %>
<tr>
	<td><%=rs.getInt(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getInt(4)%></td>
</tr>
<%}
rs.close(); ps.close(); conn.close();%>
</table>
</section>
<footer><h2>HRDKOREA Copyrightⓒ2016 All right reserved Human Development Service of Korea</h2></footer>
</body>
</html>