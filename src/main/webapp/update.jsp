<%@page import="mylib.Member"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int custno=Integer.parseInt(request.getParameter("custno"));
//out.print(custno);
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
String sql="select * from member_tb1_02 where custno=?";
PreparedStatement ps=conn.prepareStatement(sql);
ps.setInt(1, custno);
ResultSet rs=ps.executeQuery();
Member member=new Member();
if(rs.next()){
	member.setCustno(rs.getInt("custno"));
	member.setCustname(rs.getString("custname"));
	member.setPhone(rs.getString("phone"));
	member.setAddress(rs.getString("address"));
	member.setJoindate(rs.getDate("joindate"));
	member.setGrade(rs.getString("grade"));
	member.setCity(rs.getString("city"));
}
rs.close(); ps.close(); conn.close();
//out.print(member.toString());
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
display: inline;
margin: 20px;
}
section{
width: 100%;
display: inline-block;
height: 900px;
background-color: rgba(200,200,200);
}
section>h1,table{
width: 100%;
text-align: left;
padding: 12px 50px; /* 상하 좌우 */
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
margin: 0 auto; /*margin-left: auto; margin-right: auto;*/
width: 60%;
height: 80%;
font-size: larger;
padding: 0;
/*height: 80%;*/
}
td:first-child {
	width: 40%;
	text-align: center;
}
td:last-child {
	width: 60%;
}
input {
	width: auto;
	height: 40%;
	font-size: larger;
}
a{
color: white;
text-decoration: none;
}
</style>
<script>
function valuecheck(){
	var custname=document.getElementById("custname");
	var phone=document.getElementById("phone");
	var address=document.getElementById("address");
	var joindate=document.getElementById("joindate");
	var grade=document.getElementById("grade");
	var city=document.getElementById("city");
	if(custname.value==""){
		alert("회원성명을 입력해 주세요.");
		custname.focus();
		return false;
	}else if(phone.value==""){
		alert("전화번호를 입력해 주세요.");
		phone.focus();
		return false;
	}else if(address.value==""){
		alert("주소를 입력해 주세요.");
		address.focus();
		return false;
	}else if(joindate.value==""){
		alert("가입날짜를 입력해 주세요");
		joindate.focus();
		return false;
	}else if(grade.value==""){
		alert("등급을 입력해 주세요.");
		grade.focus();
		return false;
	}else if(city.value==""){
		alert("거주도시를 입력해 주세요.");
		city.focus();
		return false;
	}
}
</script>
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
<h1>홈쇼핑 회원 정보 수정</h1>
<form action="updateproc.jsp" method="post" onsubmit="return valuecheck()">
<table border="1">
<tr>
<td>회원번호(자동발생)</td>
<td><input type="text" id="custno" name="custno" value="<%=member.getCustno()%>" readonly></td>
</tr>
<tr>
<td>회원성명</td>
<td><input type="text" id="custname" name="custname" value="<%=member.getCustname()%>"></td>
</tr>
<tr>
<td>회원전화</td>
<td><input type="text" id="phone" name="phone" value="<%=member.getPhone()%>"></td>
</tr>
<tr>
<td>회원주소</td>
<td><input type="text" id="address" name="address" value="<%=member.getAddress()%>"></td>
</tr>
<tr>
<td>가입일자</td>
<td><input type="text" id="joindate" name="joindate" value="<%=member.getJoindate()%>"></td>
</tr>
<tr>
<td>고객등급[A:VIP, B:일반, C:직원]</td>
<td><input type="text" id="grade" name="grade" value="<%=member.getGrade()%>"></td>
</tr>
<tr>
<td>도시코드</td>
<td><input type="text" id="city" name="city" value="<%=member.getCity()%>"></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="등록">
<input type="button" value="조회" onclick="javascript:location.href='memberlist.jsp'">
</td>
</tr>
</table>
</form>
</section>
<footer><h2>HRDKOREA Copyrightⓒ2016 All right reserved Human Development Service of Korea</h2></footer>
</body>
</html>