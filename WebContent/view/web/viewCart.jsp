<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:url value="/gio-hang" var="APIUrl"/>
<c:url value="/trang-chu" var="DelUrl"/>
<!DOCTYPE html>

<title>Giỏ hàng</title>

<div class="span9">
	<ul class="breadcrumb">
		<li><a href="<c:url value="/trang-chu"/>">Home</a> <span class="divider">/</span></li>
		<li class="active">Giỏ hàng</li>
	</ul>
	<h3>Giỏ hàng của bạn</h3>
	<hr class="soft" />
	
	<c:choose>
		<c:when test="${order.billProducts.size() != null && order.billProducts.size() != 0 }">
                    Để xóa sản phẩm khỏi giỏ hàng, bấm <i
				class="icon-trash"></i>
			</a>. Để mua hàng, click "Gửi đơn hàng"
                <br>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th style="text-align: center;">Hình ảnh</th>
						<th>Tên sản phẩm</th>
						<th style="text-align: center;">Giá sản phẩm</th>					
						<th style="text-align: center;">Số lượng</th>
						<th style="text-align: center;">Tổng</th>
						<th style="text-align: center;">Xóa</th>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach items="${order.billProducts}" var="item">
						<tr>
							<td style="text-align: center; vertical-align: middle;">
								<img width="60" src="${item.productModel.image}" title="#">								
							</td>
							
							<td style="vertical-align: middle;">${item.productModel.name}</td>
							
							<td style="text-align: center; vertical-align: middle;">
								<fmt:formatNumber value="${item.unitPrice}" /> đ
							</td>
							
							<%-- <td style="text-align: center; vertical-align: middle;">${item.value.quantity}</td> --%>
									
							<td style="text-align: center; vertical-align: middle;">																
								<input name="quantity" class="span1" style="max-width: 34px"
									value="${item.quantity}" type="number">																					
							</td>
							
							<td style="text-align: center; vertical-align: middle;">
								<fmt:formatNumber value="${item.quantity * item.unitPrice}" /> đ
							</td>
									
							<td style="text-align: center; vertical-align: middle;">
								<a href="<c:url value="/xoa-gio-hang?id=${item.id}"/>">
									<i class="icon-trash"></i>
								</a>
							</td>																						
						</tr>
					</c:forEach>
					
					<tr>
						<td colspan="5" style="text-align: right"><strong>Tổng
								cộng </strong>
						</td>
						<td class="label label-important"
							style="display: block; text-align: center;"><strong>
								<fmt:formatNumber value="${order.totalPrice}" /> đ
							</strong>
						</td>					
					</tr>
				</tbody>							
			</table>
			<a style="display: flex; justify-content: center;" href="<c:url value="/trang-chu"/>"><strong>Tiếp tục mua hàng</strong></a>
			<br/>
		</c:when> 
		<c:otherwise>
			<div class="alert alert-block alert-error fade in">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<strong>Không có sản phẩm nào trong giỏ hàng của bạn !!
					Click vào <a href="<c:url value="/trang-chu"/>" style="color: red;"> mua
						hàng </a> để mua hàng !!!
				</strong>
			</div>
		</c:otherwise> 
	</c:choose>
	
	<table class="table table-bordered">
            <tbody>
                <tr>
                    <th>Nhập đầy đủ thông tin <span style="color: red;">(*)</span> <span style="float: right; color: red;"></span></th>
                </tr>
                <tr> 
                    <td>
                        <form  id="formSubmit" class="form-horizontal" method="post">
                            <div class="control-group">
                                <label class="control-label" for="inputCountry">Họ và tên <span style="color: red;">(*)</span> </label>
                                <div class="controls">
                                    <input value="" style="width: 90%;" type="text" id="shipName" name="shipName" placeholder="Họ và tên" class="form-control"/><br>
                                    
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputPost">Email <span style="color: red;">(*)</span> </label>
                                <div class="controls">
                                    <input value="" style="width: 90%;" type="text" id="shipEmail" name="shipEmail" placeholder="Email" class="form-control"/><br>
                                    
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputCountry">Số điện thoại <span style="color: red;">(*)</span> </label>
                                <div class="controls">
                                    <input value="" style="width: 90%;" type="text" id="shipMobile" name="shipMobile" placeholder="Số điện thoại" class="form-control"/><br>
                                   
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputPost">Địa chỉ <span style="color: red;">(*)</span> </label>
                                <div class="controls">
                                    <input value="" style="width: 90%;" type="text" id="shipAdress" name="shipAdress" placeholder="Địa chỉ" class="form-control"/><br>
                                   
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputCountry">Ngày gửi đơn </label>
                                <div class="controls">
                                    <input value="" style="width: 90%;" type="date" id="today" name="createdDate" readonly="true" placeholder="" class="form-control"/>
                                    
                                </div>
                            </div>
                            
                             <input type="hidden" name="id" id="id"/>
                            
                            <c:if test="${order.billProducts.size() != null && order.billProducts.size() != 0 }">
                                <div class="control-group">
                                    <div class="controls" style="display: flex; justify-content: center;">                                    
                                        <input id="AddOrder" type="submit" class="btn" value="Gửi đơn hàng" />                                    
                                    </div>
                                </div>
                            </c:if>
                        </form>			  
                    </td>
                </tr>
            </tbody>
        </table>
</div>

<script type="text/javascript">
document.querySelector('#today').valueAsDate = new Date();
	
	$('#AddOrder').click (function (e) {
		e.preventDefault();
		var data = {};
		var formData = $('#formSubmit').serializeArray();
		$.each(formData, function (i, v) {
			data[""+v.name+""] = v.value;
		});
		var id = $('#id').val();
		if (id == "") {
			addOrder(data);
		}
	});
	
	function addOrder(data) {
		$.ajax({
			type: "POST",
			url: "${APIUrl}",
			contentType: "application/json",
			data: JSON.stringify(data),
			dataType: "json",
			success: function (result) {
				window.location.href = "${DelUrl}";
			},
			error: function (error) {
				window.location.href = "";
			}
		});
	}
</script>