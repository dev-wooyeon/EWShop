<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  bootstrap CDN  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  bootstrap DropDown CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!--  bootstrap DropDown JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>
<!-- jQuery JS -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!--  CSS -->
<style>
body {
	padding-top: 50px;
}
</style>

<script type="text/javascript">
	$(function() {
		$("button:contains('����')")
				.on(
						"click",
						function() {
							$(self.location)
									.attr("href",
											"/purchase/updatePurchaseView?tranNo=${purchase.tranNo}");
						});
		$("span:contains('����Ʈ')").on("click", function() {
			$(self.location).attr("href", "/purchase/listPurchase")
		});
	});
</script>
</head>
<title>���� �� ��ȸ</title>
<body>

	<jsp:include page="/layout/toolbar.jsp" />

	<div class="container">

		<div class="page-header">
			<span class="glyphicon glyphicon-arrow-left">&nbsp;����Ʈ��</span>
			<h3 class="text-info">���� ����</h3>
		</div>

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>��ǰ��ȣ</strong>
			</div>
			<div class="col-xs-8 col-md-4">${purchase.purchaseProd.prodNo}</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>���Ű���</strong>
			</div>
			<div class="col-xs-8 col-md-4">${purchase.amount}</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>������ ���̵�</strong>
			</div>
			<div class="col-xs-8 col-md-4">${purchase.buyer.userId}</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>���Ź��</strong>
			</div>
			<div class="col-xs-8 col-md-4">${! empty purchase.paymentOption=='1' ? "īī������" : "�������Ա�"}</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>�����ô� ��</strong>
			</div>
			<div class="col-xs-8 col-md-4">${purchase.receiverName}</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>����ó</strong>
			</div>
			<div class="col-xs-8 col-md-4">${purchase.receiverPhone}</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>�����ô� �ּ�</strong>
			</div>
			<div class="col-xs-8 col-md-4">${purchase.divyAddr}</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>�ֹ�����</strong>
			</div>
			<div class="col-xs-8 col-md-4">${purchase.divyDate}</div>
		</div>

		<hr>

		<div class="row">
			<div class="col-xs-4 col-md-2">
				<strong>���� ��û����</strong>
			</div>
			<div class="col-xs-8 col-md-4">${purchase.divyRequest}</div>
		</div>
		
		<hr/>
		
		<div class="row">
			<div class="col-md-12 text-center ">
				<c:if test="${purchase.tranCode == 000}">
					<button type="button" style="color:white;background: black; width: 100%; height: 40px">�ֹ� ���� �����ϱ�</button>
				</c:if>
			</div>
		</div>
		
		<p>
		
	</div>
	
	<jsp:include page="/layout/bottom.jsp"></jsp:include>
	
</body>
</html>