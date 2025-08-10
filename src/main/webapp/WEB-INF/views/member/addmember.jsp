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
  } 
  td:nth-of-type(1) { width: 200px; }
  
  input { width: 70%; }
  input[type=submit] { width: 100px; }  
</style>
</head>
<body>
  <main>
    <h2>회원 정보등록</h2>
    <form action="/Menus/AddMem" method="POST">
        <table>
         <tr>
           <td>회원 아이디</td>
           <td><input type="text" name="userid" />&nbsp;<button onclick="">아이디 중복 체크</button></td>         
         </tr>
         <tr>
           <td>회원 패스워드</td>
           <td><input type="text" name="passwd" /></td>
         </tr>
         <tr>
           <td>회원 이름</td>
           <td><input type="text" name="username" /></td>
         </tr>
         <tr>
           <td>E-MAIL</td>
           <td><input type="text" name="email" />&nbsp;<button id="mailChk" onclick="validateEmail()">이메일체크</button></td>
         </tr>
         <tr> 
           <td colspan="4"><input type="submit" name="등록" /></td>
         </tr>
        </table>
    </form>
  </main>
  
  <script>
	  const formEl = document.querySelector('form');
	  let btnEmailChk = false;
	  
	  formEl.addEventListener('submit', function(e){
		   
	    const inputId = document.querySelector('[name="userid"]');
	    const inputPwd = document.querySelector('[name="passwd"]');
	    const inputName = document.querySelector('[name="username"]');
	    const inputEmail = document.querySelector('[name="email"]');
	    
	    if(inputId.value.trim() == '') { 
	        alert('아이디를 입력해주세요');
	        e.stopPropagation();
	        e.preventDefault();
	        inputId.focus();
	        return false;
	     };
	     if(inputPwd.value.trim() == '') { 
	         alert('패스워드를 입력해주세요');
	         e.stopPropagation();
	         e.preventDefault();
	         inputPwd.focus();
	         return false;
	      };
	      if(inputName.value.trim() == '') { 
	          alert('이름을 입력해주세요');
	          e.stopPropagation();
	          e.preventDefault();
	          inputName.focus();
	          return false;
	       };
	       if(inputEmail.value.trim() == '') { 
	           alert('E-MAIL을 입력해주세요');
	           e.stopPropagation();
	           e.preventDefault();
	           inputEmail.focus();
	           return false;
	        };
	        if(btnEmailChk != true) {
	        	alert('이메일체크를 해주세요');
	        	e.stopPropagation();
	          e.preventDefault();
	          return false;
	        }
	  })
	  
	  function emailCheck(email_address){     
		  email_regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;
		  if(!email_regex.test(email_address)) {
			  
		    return false; 
		  } else {
			  //btnEmailChk = false;
		   return true;
		  }
	  }
		function validateEmail() {
		  var emailInput = document.querySelector('[name="email"]');
		  var email = emailInput.value;
		  
		  
		  if (emailCheck(email)) {
		    alert('유효한 이메일 주소입니다');
		    btnEmailChk = true;
		  } else {
			  alert('유효하지 않은 이메일 주소입니다');
			  btnEmailChk = false;
		  }
		  
		}

  </script>
</body>
</html>