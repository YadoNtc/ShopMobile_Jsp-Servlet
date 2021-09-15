<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<div class="span9">
	<ul class="breadcrumb">
		<li><a href="<c:url value="/trang-chu"/>">Home</a> <span class="divider">/</span></li>
		<li>Sản phẩm<span class="divider">/</span></li>
		<li class="active">${product.name}</li>
	</ul>
	<div class="row">
			
		<div id="gallery" class="span3">
			<a
				href="#"
				title="Apple iPhone XS Max 64GB 2 SIM"> <img
				src="${product.image}"
				style="width: 100%" alt="Apple iPhone XS Max 64GB 2 SIM">
			</a>
		</div>
		<div class="span6">
			<h3>${product.name}</h3>
			<small
				style="color: #db0006; font-family: Roboto Condensed; font-size: 15px">Mã
				SP : ${product.code}</small> <small
				style="color: #db0006; font-family: Roboto Condensed; font-size: 15px; float: right">Số
				Lượng : ${product.quantity}</small>
			<hr class="soft">
			<form class="form-horizontal qtyFrm">
				<div class="control-group">
					<label class="control-label"><span>Giá: 
						<fmt:setLocale value = "vi_VN"/>
         				<fmt:formatNumber pattern="#,###,###" value ="${product.price}" type = "currency"/>đ</span>
					</label>
					<div class="controls">
						<a href="<c:url value="/them-vao-gio-hang?id=${product.id}"/>"
							class="btn btn-large btn-primary pull-right"> Thêm <i
							class=" icon-shopping-cart"></i></a>
							
					</div>
				</div>
			</form>
			<hr class="soft clr">
			<p style="text-align: justify">${product.description}</p>
			<a class="btn btn-small pull-right" href="#detail">Xem chi tiết</a> <br
				class="clr"> <a href="#" name="detail"></a>
			<hr class="soft">
		</div>

		<div class="span9">
			<ul id="productDetail" class="nav nav-tabs">
				<li class="active"><a href="#home" data-toggle="tab">Chi
						tiết sản phẩm</a></li>
				<li><a href="#" data-toggle="tab">Sản phẩm liên quan</a></li>
				<li><a href="#" data-toggle="tab">Bình luận</a></li>
			</ul>

			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade active in" id="home">
					<h2 dir="ltr">${product.name}</h2>
					${product.detail}
				</div>				
			</div>
		</div>
	</div>
</div>

