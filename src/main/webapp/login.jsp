<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<script type="text/javascript">
	function loginCheck(){
		if(document.loginForm.userID.value == ""){
			alert("아이디는 필수 입력사항입니다.");
			document.loginForm.userID.focus();
			return false;
		}
		else if(document.loginForm.userPW.value == ""){
			alert("비밀번호는 필수 입력사항입니다.");
			document.loginForm.userPW.focus();
			return false;
		}
		else{
			return true;
		}
	}
	
</script>
</head>
<body>
	Home > 관리자 로그인
	<hr>
	<form action="loginSuccess.jsp" method="post" name="loginForm" onsubmit="return loginCheck();"">
		<fieldset style="width:200px;">
			<legend>관리자 로그인</legend>
			아이디 <input type="text" name="userID" size="16"><br>
			비밀번호 <input type="password" name="userPW" size="16"><br>
			<input type="submit" value="로그인 ▶▶">
		</fieldset>
	</form>
</body>
</html>