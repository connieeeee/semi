<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
.input { 
	position: relative;
}
.input .eyes {
	position: absolute; 
	top: 0; 
	bottom: 0; 
	right: 0; 
	margin: auto 2px; 
	height: 30px; 
	font-size: 22px; 
	cursor: pointer;
}
</style>
	
	<div align='center'>
      <form action="regeisterAf.jsp" method="post" name="regeister_member" id="regeform">
        <table width="800">
          <tr height="40">
            <td align="center"><b>[회원가입]</b></td>
          </tr>
        </table>
        <table
          width="700"
          height="600"
          cellpadding="0"
          style="border-collapse: collapse; font-size: 9pt;"
        >
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">회원 ID</td>
            <td>
              <input type="text" id="userid" name="userid" />
              &nbsp;
              <a href="javascript:id_check()">[ID 중복 검사]</a>
              <br>
              <span id="checkID"></span>
            </td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">비밀번호</td>
            <td>
            	<div id="password" class="input password">
					<input type="password" name="userpw" id="pw"/>
				</div>  
					<a href="javascript:show_pwd()"><i id="eyes" class="fas fa-eye"></i></a>
			</td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">대 표 자 명</td>
            <td>
              <input type="text" name="username" maxlength="4" />
            </td>
          </tr>
                    <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">회 사 이 름</td>
            <td>
              <input type="text" name="companyName" />
            </td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">사업자번호</td>
            <td>
              <input
                type="text"
                name="comNum1"
                size="3"
                maxlength="3"
                onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
              />-
              <input
                type="text"
                name="comNum2"
                size="2"
                maxlength="2"
                onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
              />-
              <input
                type="text"
                name="comNum3"
                size="5"
                maxlength="5"
                onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
              />
            </td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">업태</td>
            <td><input type="tel" name="business_condition" /></td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">종목</td>
            <td><input type="text" name="business_kind" /></td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">이메일</td>
            <td><input type="email" name="useremail" /></td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">전화번호</td>
            <td>
              <select name="tel1" id="tel1">
                <option value="02">02</option>
                <option value="031">031</option>
                <option value="033">033</option>
                <option value="043">043</option>
                <option value="041">041</option>
                <option value="054">054</option>
                <option value="055">055</option>
                <option value="063">063</option>
                <option value="061">061</option>
                <option value="064">064</option>
                <option value="070">070</option>
              </select>
              <input
                type="tel"
                name="tel2"
                size="4"
                maxlength="4"
                onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
              />-
              <input
                type="tel"
                name="tel3"
                size="4"
                maxlength="4"
                onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
              />
            </td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr class="register" height="30">
            <td width="5%" align="center">*</td>
            <td width="15%">핸드폰번호</td>
            <td>
              <input
                type="tel"
                name="phone1"
                size="4"
                maxlength="3"
                onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
              />-
              <input
                type="tel"
                name="phone2"
                size="4"
                maxlength="4"
                onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
              />-
              <input
                type="tel"
                name="phone3"
                size="4"
                maxlength="4"
                onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
              />
            </td>
          </tr>
          <tr height="7">
            <td colspan="3"><hr /></td>
          </tr>
          <tr>
            <td width="5%" align="center">*</td>
            <td width="15%">주 소</td>
            <td>
              <input
                type="text"
                size="10"
                name="postNum"
                id="postNum"
                placeholder="우편번호"
                readonly="readonly"
                onclick="DaumPostcode()"
              />
              <input
                type="button"
                name="searchAddr"
                onclick="DaumPostcode()"
                value="우편번호 찾기"
              /><br /><br />
              <input
                type="text"
                size="60"
                name="roadAddress"
                id="roadAddress"
                placeholder="도로명주소"
                readonly="readonly"
                onclick="DaumPostcode()"
              />
              <br /><br />
              <input
                type="text"
                name="wAddress"
                id="wAddress"
                placeholder="상세주소"
                size="60"
              />
            </td>
          </tr>
        </table>
        <br />
        <table>
          <tr height="40">
            <td>
              <input type="button" value="돌아가기" onclick="goBack();" />
              <input type="button" value="회원가입" onclick="check_form();"/>
            </td>
          </tr>
        </table>
      </form>
	</div>
<script type="text/javascript">
function show_pwd(){
		$("#password").toggleClass("active");

		if($("#password").hasClass("active") == true){
			$("#eyes").attr("class","fas fa-eye-slash");
			$('#pw').attr("type","text");
		}
		else{
		 	$("#eyes").attr('class',"fas fa-eye");
		 	$('#pw').attr('type','password'); 
		}
};



function DaumPostcode() {
  new daum.Postcode({
    oncomplete: function (data) {
      // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
     // 각 주소의 노출 규칙에 따라 주소를 조합한다.
     // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
      var addr = ""; // 주소 변수
      var extraAddr = ""; // 참고항목 변수
       //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
      if (data.userSelectedType === "R") {
        // 사용자가 도로명 주소를 선택했을 경우
        addr = data.roadAddress;
      } else {
        // 사용자가 지번 주소를 선택했을 경우(J)
        addr = data.jibunAddress;
      }
       // 우편번호와 주소 정보를 해당 필드에 넣는다.
      document.getElementById("postNum").value = data.zonecode;
      document.getElementById("roadAddress").value = addr;
      // 커서를 상세주소 필드로 이동한다.
      document.getElementById("wAddress").focus();
    },
  }).open();
}

function id_check() {
	if($("#userid").val()=="" || $("#userid").val() == null || $("#userid").val().trim() == "")
		$("#userid").focus();

	else{
		/* $.ajax({
			type:'POST',
			url:'./idCheck.jsp',
			data:{
				"id":form.userid.value
			},
			success:function(data){
				if(data.result == true){
					checkID.innerHTML="<strong style='color:red;'>중복된 아이디입니다.</strong>"
					form.userid.value=""
				}else{
					checkID.innerHTML="<strong style='color:black'>사용가능 아이디입니다.</strong>"
				}
			},
		}) */
	}
}
</script>
    