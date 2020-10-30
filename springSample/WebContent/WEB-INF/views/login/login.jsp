<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div>
	<form action="loginAf" method="post">
		<div>
			<input type="text" id="id" name="id" placeholder="아이디">
			<input type="password" id="pwd" name="pwd" placeholder="비밀번호">
		</div>
		<div>
			<input type="submit" id="login" value="로그인">
			<input type="button" id="regi" value="회원기입 ">
		</div>
	</form>
</div>

<script type="text/javascript">
$(function(){
	$("#regi").on("click",function(){
		location.href="regi";
	});
});
</script>