<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
	<div class="wrap-list">
		<table id="buyer_list" border="1">
			<tr>
				<td>회사명</td>
				<td>대표</td>
				<td>연락처</td>
			</tr>
			<c:if test="${not empty list }">
				<c:forEach items="buyer" varStatus="by">
					<tr>
						<td>${by.buyer_company_name }</td>
						<td>${by.buyer_ceo }</td>
						<td>${by.buyer_tel_num }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty list}">
				<tr>
					<td colspan="3">
						목록이 비었습니다
					</td>
				</tr>
			</c:if>
		</table>
	</div>
	<div class="wrap-inform">
		<form id="add-frm" method="post">
		<input type="hidden" value="${id }">
			<div class="company-name">
				<p class="name-company">
					거래처명
				</p>
				<span>
					<input type="text" id="companyName" name="buyer_company_name">
				</span>
			</div>
			<div class="ceo-name">
				<p class="name-ceo">
					대표자
				</p>
				<span>
					<input type="text" id="ceoName" name="buyer_ceo">
				</span>
			</div>
			<div class="condition">
				<p class="business-condition">
					업태
				</p>
				<span>
					<input type="text" id="businessCondition" name="buyer_business_condition">
				</span>
			</div>
			<div class="kinds">
				<p class="business-kinds">
					종목
				</p>
				<span>
					<input type="text" id="businessKinds" name="buyer_business_kinds">
				</span>
			</div>
			<div class="company-number">
				<p class="company-num">
					사업자 번호
				</p>
				<span>
					<input type="text" id="CompanyNumber" name="buyer_company_num">
				</span>
			</div>
			<div class="address">
				<p class="company-address">
					주소
				</p>
				<span>
					<input type="text" size="10" name="buyer_address1" id="postNum" placeholder="우편번호" readonly="readonly" onclick="DaumPostcode()" />
					<input type="button" name="searchAddr" onclick="DaumPostcode()" value="우편번호 찾기" />
					<input type="text" size="60" name="buyer_address2" id="roadAddress" placeholder="도로명주소" readonly="readonly" onclick="DaumPostcode()" />
					<input type="text" name="wAddress" id="buyer_address3" placeholder="상세주소" size="60" />
						
					<input type="text" id="buyerAddress1" name="buyer_address1">
					<input type="text" id="buyerAddress2" name="buyer_address2">
					<input type="text" id="buyerAddress3" name="buyer_address3">
				</span>
			</div>
			<div class="company-admin">
				<p class="company-ad">
					담당자
				</p>
				<span>
					<input type="text" id="CompanyAdmin" name="buyer_admin">
				</span>
			</div>
			<div class="company-email">
				<p class="company-email-p">
					이메일
				</p>
				<span>
					<input type="text" id="CompanyEmail" name="buyer_email">
				</span>
			</div>
			<div class="company-email">
				<p class="company-email-p">
					이메일
				</p>
				<span>
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
				</select> <input type="tel" id="tel2" name="tel2" size="4" maxlength="4"
					onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" />-
					<input type="tel" id="tel3" name="tel3" size="4" maxlength="4"
					onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
				</span>
			</div>
			<div class="company-date">
				<p class="company-date-p">
					계약일
				</p>
				<span>
					<input type="text" id="CompanyDate" name="buyer_date">
				</span>
			</div>
			<div class="company-homepage">
				<p class="company-homepage-p">
					홈페이지
				</p>
				<span>
					<input type="text" id="CompanyHomepage" name="buyer_homepage">
				</span>
			</div>
			<div class="company-memo">
				<p class="company-memo-p">
					비고
				</p>
				<span>
					<textarea rows="5" cols="10" style="resize: none;" id="CompanyMemo" name="buyer_memo"></textarea>
				</span>
			</div>
			<div class="submit-btn">
				<input type="submit" id="submit" value="저장">
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$("#submit").on("click",function(){
		$("#add-frm").attr("action","add_buyer");
		javascript.location.reload;
	});
});
</script>







