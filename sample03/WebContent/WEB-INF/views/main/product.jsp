<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
input[type="number"]::-webkit-outer-spin-button, input[type="number"]::-webkit-inner-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}

.btn-success {
	/* 	background-color: #088A08;
	border-color: #088A08; */
	
}
</style>

<div class="container">
	<div class="wrap-list">
		<table id="buyer_list" border="1">
			<tr>
				<td>번호</td>
				<td>품목명</td>
				<td>종류</td>
			</tr>
			<c:if test="${not empty list }">
				<c:forEach items="${list}" var="by" varStatus="i">
					<tr onclick="show_list(${by.product_seq})">
						<td>${i.count }</td>
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
		<form id="add-product-frm" action="add_product" method="post">
		<input type="hidden" id="productSeq" name="product_seq">
			<div class="PlasePrettyCss">
				<div id='addProductTable'>
					<div>품목명</div>
					<div>
						<input type='text' id='productName' name='product_name'>
					</div>

					<div>상품종류</div>
					<div>
						<input type="text" id="productSort" name="product_sort"> 
						<select id="saveSelectSort" name='saveSelectSort' class="custom-select" style="width: fit-content;">
							<c:if test="${not empty listSort }">
								<option value="none">선택하세요</option>
								<c:forEach items="${listSort }" var="list">
									<!-- <input type="hidden" value="${list.seller_id }" name="seller_id"> -->
									<option value='${list.product_seq }'>${list.product_sort }</option>
								</c:forEach>
							</c:if>
							<c:if test="${empty listSort }">
								<option value="none">추가하세요</option>
							</c:if>
						</select>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outline-success btn-sm"
							data-toggle="modal" data-target="#addSort">추가</button>

						<!-- Modal -->
						<div class="modal fade" id="addSort" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">품목 추가</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
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
						<input type="text" id="productUnit" name="product_unit"> <select
							id="productUnit_select" name='productUnitSelect'
							class="custom-select" style="width: fit-content;">
							<c:if test="${not empty listUnit }">
								<option value="none">선택하세요</option>
								<c:forEach items="${listUnit }" var="list">
									<option value='${list.product_unit }'>${list.product_unit }</option>
								</c:forEach>
							</c:if>
							<c:if test="${empty listUnit }">
								<option value="none">추가하세요</option>
							</c:if>
						</select>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-outline-success btn-sm"
							data-toggle="modal" data-target="#addUnit">추가</button>

						<!-- Modal -->
						<div class="modal fade" id="addUnit" tabindex="-1" role="dialog"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">단위 추가</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body"></div>
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
							name='product_trade_price' min='0' step='1'>
					</div>

					<div>박스당 낱개</div>
					<div>
						<input type='number' id='productPieceBox' name='product_piece_box'
							min='0' step='1'> 개
					</div>

					<div>상품규격</div>
					<div>
						<input type='number' id='productStandard' name='product_standard'
							min='0' step='1'> ml
					</div>

					<div id="buttonTable">

						<div>
							<input type="submit" id='submit' class="btn btn-success btn-sm" value='저장'>
							<input type="button" id="delete" class="btn btn-outline-danger btn-sm" value="삭제">
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
		$("#add-product-frm").attr("action","add_product").submit();
	});

	
	$("#saveSelectSort").on("change",function() {
		var seq = $(this).val();
		var txt = $("#saveSelectSort option:selected").text();

		// select한 value를 input에 넣기
		if(txt == "선택하세요"){
			$("#productSort").val("");
		}else{
			$("#productSeq").val(seq);
			$("#productSort").val(txt.trim());
		}
	});
	
	$("#productUnit_select").on("change",function() {
	//	var cam = $(this).val();
		var txt = $("#productUnit_select option:selected").text();

		// select한 value를 input에 넣기
	//	$("#camera_seq").val(cam);
		if(txt == "선택하세요"){
			$("#productUnit").val("");
		}else{
			$("#productUnit").val(txt.trim());
		}
	});


	$("#delete").on("click",function(){
		location.href="delete_product?product_seq=" + $("#productSeq").val();
	});
	
});

function show_list(seq){
	$.ajax({
		url:"show_inform_product",
		type:"get",
		data:{"product_seq" : seq},
		success:function(list){
			
			$("#productName").val(list.product_name);
			$("#productSort").val(list.product_sort);
			$("#productUnit").val(list.product_unit);
			$("#productSeq").val(list.product_seq);
			$("#productTradePrice").val(list.product_trade_price);
			$("#productPieceBox").val(list.product_piece_box);
			$("#productStandard").val(list.product_standard);

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



