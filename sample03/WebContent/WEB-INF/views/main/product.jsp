<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}
.btn-success{
/* 	background-color: #088A08;
	border-color: #088A08; */
}
</style>

<div class="container">
	<div class="wrap-list">
		<table id="buyer_list" border="1">
			<tr>
				<td>상품번호</td>
				<td>품목명</td>
				<td>종류</td>
			</tr>
			<c:if test="${not empty list }">
				<c:forEach items="${list}" var="by" varStatus="i">
					<tr onclick="show_list(${by.product_seq})">
						<td>${i }</td>
						<td>${by.product_name }</td>
						<td>${by.product_sort }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty list}">
				<tr>
					<td colspan="3">목록이 비었습니다</td>
				</tr>
			</c:if>
		</table>
	</div>
	<div class="wrap-inform">
		<form id="add-product-frm" method="post">
			<div class="PlasePrettyCss">
				<div id='addProductTable'>
					<div>물품 추가</div>

					<div>품목명</div>
					<div>
						<input type='text' id='productName' name='productName'>
					</div>

					<div>상품종류</div>
					<div>
						<select id="saveSelectSort" name='saveSelectSort'>
							<c:if test="${not empty list }">
								<c:forEach items="${list }" var="list">
									<option value='${list.product_sort }'>${list.product_sort }</option>
								</c:forEach>
							</c:if>
							<c:if test="${empty list }">
								<option value="none">추가하세요</option>
							</c:if>
						</select>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal"
							data-target="#addSort">추가</button>

						<!-- Modal -->
						<div class="modal fade" id="addSort" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">품목 추가</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">...</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary btn-sm"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-success btn-sm">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>


					</div>

					<div>단위</div>
					<div>
						<select id="productUnit" name='productUnit'
							style='text-align-last: center'>
							<c:if test="${not empty list }">
								<c:forEach items="${list }" var="list">
									<option value='${list.product_unit }'>${list.product_unit }</option>
								</c:forEach>
							</c:if>
							<c:if test="${empty list }">
								<option value="none">추가하세요</option>
							</c:if>
						</select>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outline-success btn-sm" data-toggle="modal"
							data-target="#addUnit">추가</button>

						<!-- Modal -->
						<div class="modal fade" id="addUnit" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">단위 추가</h5>
										<button type="button" class="close" data-dismiss="modal" aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">...</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary btn-sm"
											data-dismiss="modal">Close</button>
										<button type="button" class="btn btn-success btn-sm">Save
											changes</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div>도매가</div>
					<div>
						<input type='number' id='productTradePrice'
							name='productTradePrice' min='0' step='10'>
					</div>

					<div>박스당 낱개</div>
					<div>
						<input type='number' id='productPieceBox' name='productPieceBox'
							min='0' step='1'> 개
					</div>

					<div>상품규격</div>
					<div>
						<input type='number' id='productStandard' name='productStandard'
							min='0' step='1'> ml
					</div>

					<div id="buttonTable">

						<div>
							<input type='button' id='insertProduct' class="btn btn-success" value='저장'>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$("#submit").on("click",function(){
		var buyer_tel_num = $("#tel1 option:selected").val() + $("#tel2").val() + $("#tel3").val(); 
		$("#tel_num").attr("value",buyer_tel_num);
	 	$("#add-frm").attr("action","add_buyer");
		javascript.location.reload;
	});
});
function show_list(seq){
	$.ajax({
		url:"show_inform",
		type:"get",
		data:{"buyer_seq" : seq},
		success:function(list){
		
			$("#companyName").val(list.buyer_company_name);
			$("#ceoName").val(list.buyer_ceo);
			$("#businessCondition").val(list.buyer_business_condition);
			$("#businessKinds").val(list.buyer_business_kinds);
			$("#CompanyNumber").val(list.buyer_company_num);
/* 			$("#companyName").val(list.buyer_company_name);
			$("#companyName").val(list.buyer_company_name);
			$("#companyName").val(list.buyer_company_name); */
			$("#CompanyAdmin").val(list.buyer_admin);
			$("#CompanyEmail").val(list.buyer_email);
 			$("#postNum").val(list.buyer_address1);
			$("#roadAddress").val(list.buyer_address2);
			$("#wAddress").val(list.buyer_address3); 
			$("#CompanyDate").val(list.buyer_date);
			$("#CompanyHomepage").val(list.buyer_homepage);
			$("#CompanyMemo").val(list.buyer_memo);
			

		}
	});
}
</script>



<script>
$(document).ready(function(){
    $("#sort_btn").click(function(){
        $("#myModal").modal();
    });
});
</script>



