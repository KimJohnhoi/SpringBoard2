<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/ico" href="/img/favicon.ico" />
<link rel="stylesheet" href="/css/common.css" />
<!-- scss 문법 가능하게 하는 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<style>
  td {text-align: center; }
  tr:first-child {
    background-color: black;
    font-weight: bold; 
    
    /* === SCSS 문법에 적용(SASS 문법중에 하나) : 별도 라이브러리 필요 (스프링에서 자동적용, 라이브러리 없이)=== */
    td {border-color: cyan; color: white}
  }
  
  td[colspan="8"] {text-align: right; }
</style>
</head>
<body>
  <main>
    <h2>회원 목록</h2>
    <table>
      <tr>
        <td>회원 아이디</td>
        <td>패스워드</td>
        <td>회원 이름</td>
        <td>E-MAIL</td>
        <td>포인트</td>
        <td>가입일</td>
        <td>수정</td>
        <td>삭제</td>
      </tr>
      <tr>
        <td colspan="8">
          <a href="/Menus/AddForm">회원추가</a>
        </td>
      </tr>
      <!-- Expression language % 대신 사용 -->
      <!--  중요: "${ menuList }"   "" 안에는 공백 넣으면 안됨!!-->
      <c:forEach var = "member" items = "${ memList }">
      <tr>
        <td>${ member.userid }</td> 
        <td>${ member.passwd }</td> 
        <td>${ member.username }</td> 
        <td>${ member.email }</td> 
        <td>${ member.upoint }</td> 
        <td>${ member.indate }</td> 
        <td><a href="/Menus/UpdateForm?userid=${ member.userid }">수정</a></td>
        <td><a href="/Menus/Delete?userid=${ member.userid }">삭제</a></td>
      </tr>
      </c:forEach>
    </table>
  </main>
</body>
</html>