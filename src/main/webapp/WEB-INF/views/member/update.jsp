<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" type="image/ico" href="/img/favicon.ico" />
<link rel="stylesheet" href="/css/common.css" />
<style>
  td {
    padding: 10px;
    width: 700px;
    text-align: center;
  } 
  td:nth-of-type(1) { width: 200px; }
  
  input { width: 100%; }
  input[type=submit] { width: 100px; }  
</style>
</head>
<body>
  <main>
    <h2>회원 정보수정</h2>
    <form action="/Menus/UpdateAction" method="POST">
        <table>
         <tr>
           <td>회원 아이디</td>
           <td><input type="text" name="userid"  value="${ upMem.userid }" readonly/></td>
         </tr>
         <tr>
           <td>회원 패스워드</td>
           <td><input type="text" name="passwd" value="${ upMem.passwd }" /></td>
         </tr>
         <tr>
           <td>회원 이름</td>
           <td><input type="text" name="username" value="${ upMem.username }" /></td>
         </tr>
         <tr>
           <td>E-MAIL</td>
           <td><input type="text" name="email" value="${ upMem.email }" /></td>
         </tr>
         <tr> 
           <td colspan="4"><input type="submit" name="수정" /></td>
         </tr>
        </table>
    </form>
  </main>
  
  <script>
  
  </script>
</body>
</html>