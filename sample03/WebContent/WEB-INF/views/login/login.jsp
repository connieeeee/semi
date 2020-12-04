<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  
<div class="container">
	<form id="_frmForm" method="post">
		<div>
			<input type="text" id="id" name="id" placeholder="아이디"> 
			<input type="password" id="pwd" name="pwd" placeholder="비밀번호">
		</div>
		<div>
			<input type="button" id="login" value="로그인"> 
			<input type="button" id="regi" value="회원기입 ">
		</div>
	</form>
	<a href="main">main</a>
</div>
<p></p>
<script type="text/javascript">
	$(function() {
		$("#regi").on("click", function() {
			location.href = "regi";
		});

		$("#login").on("click",	function() {
			if ($("#id").val() == "") {
				alert("아이디를 입력해주세요");
				$("#id").focus();
			} else if ($("#pwd").val() == "") {
				alert("비밀번호를 입력해주세요");
				$("#pwd").focus();
			} else {
				$.ajax({
					url:'loginAf',
					type:'post',
					data:{'id':$("#id").val(),
							'pwd':$("#pwd").val()},
					success:function(msg){
						alert(msg);
						if(msg == 'ok'){
							location.href="main";
						}else{
							alert("ss");
						}
					}
				});
			}
		});
	});
</script>