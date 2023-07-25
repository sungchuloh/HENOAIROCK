<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath }"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- CSS only -->
<link rel="stylesheet" type="text/css" href="/resources/css/passwd.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>
<script src="${CP}/resources/js/util.js"></script>
<title>비밀번호 찾기</title>
</head>
<body>
  <div id="con" class="find_pw">
    <div id="login">
      <div id="login_form">
        <!--로그인 폼-->
        <form>
          <h2>비밀번호 변경</h2>
          
          <p class="find">
          <span><a href="/member/login">로그인 페이지로 이동</a></span>
          </p>
          
            <p class="input-title">E-mail</p>
            <div class="input-wrapper">
              <label> <input type="text" class="size line-input"> 

            </label>

            </div>

            <!--이메일 인증번호 입력-->
            <input type="button" value="인증번호 전송 " class="btnRe">
                        <input type="button" value="인증번호 확인 " class="btnRe">
            <p class="input-title">E-mail 인증번호 입력</p>
            <label> <input type="text" class="size line-input"> 
            
            </label>

            <!--비밀번호-->
            <p class="input-title">Password</p>
            <label for="password"> <input
              placeholder="비밀번호는 8이상 12자 이하로 설정바랍니다." type="password"
              class="size line-input" id="password" name="password" required>
              <span class="error-message" id="password_error"></span>
            </label>

            <!--비밀번호 확인-->
            <p class="input-title">Password확인</p>
            <label for="confirm_password"> <input type="password"
              class="size line-input" id="confirm_password" name="confirm_password"
              required oninput="validateForm()"> <span
              class="error-message" id="confirm_password_error"></span>
            </label>

          <p>
            <input type="submit" value="비밀번호 변경" class="Creative">
          </p>
        </form>

        
      </div>
    </div>
  </div>
  
  <script>
      function validateForm() {
        var password = document.getElementById("password").value;
        var confirm_password = document
            .getElementById("confirm_password").value;
        var password_error = document.getElementById("password_error");
        var confirm_password_error = document
            .getElementById("confirm_password_error");

        if (confirm_password.trim().length === 0) {
          confirm_password_error.innerHTML = "";
        } else if (password !== confirm_password) {
          confirm_password_error.innerHTML = "비밀번호가 일치하지 않습니다.";
        } else {
          confirm_password_error.innerHTML = "";
        }

        if (password_error.innerHTML === ""
            && confirm_password_error.innerHTML === "") {
          return true;
        } else {
          return false;
        }
      }

      function clearPasswordError() {
        var password_error = document.getElementById("password_error");
        var confirm_password_error = document
            .getElementById("confirm_password_error");

        password_error.innerHTML = "";
        confirm_password_error.innerHTML = "";
      }
    </script>
</body>
</html>