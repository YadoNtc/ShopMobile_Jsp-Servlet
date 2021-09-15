<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<div class="span9">
	<ul class="breadcrumb">
		<li><a href="<c:url value="/trang-chu"/>">Home</a> <span class="divider">/</span></li>
		<li class="active">Sản phẩm</li>
	</ul>
	<h3>Sản phẩm</h3>
	<hr class="soft" />
	<div class="control-group">
		<div class="controls">
			<a style="margin: -10px 5px 0 0;">&nbsp;</a> <a
				href="productClientSortPriceAsc.htm?page=1"
				class="pull-right btn btn-success btn-xs"
				style="margin: -10px 0 0 0;">Giá tăng dần</a> <a
				href="productClientSortPriceDesc.htm?page=1"
				class="pull-right btn btn-success btn-xs"
				style="margin: -10px 5px 0 0;">Giá giảm dần</a> <a
				href="productClientSortNameAsc.htm?page=1"
				class="pull-right btn btn-success btn-xs"
				style="margin: -10px 5px 0 0;">Tên tăng dần</a> <a
				href="productClientSortNameDesc.htm?page=1"
				class="pull-right btn btn-success btn-xs"
				style="margin: -10px 5px 0 0;">Tên giảm dần</a>
		</div>
	</div>
	
	<!-- Chọn kieu hien thi -->
	<div id="myTab" class="pull-right" style="margin-bottom: 10px;">
		<a href="#listView" data-toggle="tab">
			<span class="btn btn-large">
				<i class="icon-list"></i>
			</span>
		</a> 
		<a href="#blockView" data-toggle="tab">
			<span class="btn btn-large btn-primary">
				<i class="icon-th-large"></i>
			</span>
		</a>
	</div>
	<br class="clr" />
	
	<div class="tab-content">
	
		<div class="tab-pane" id="listView">
		
			<c:forEach items="${product.listResult}" var="p">
				<div class="row">
					<div class="span2">
						<img src="${p.image}" alt="${p.name}"
							style="width: 170px; height: 120px;" />
					</div>
					<div class="span4">
						<hr class="soft" />
						<h5>${p.name}</h5>
						<p>${p.description}</p>
						<a class="btn btn-small pull-right"
							href="<c:url value="/home-product-detail?id=${p.id}"/>">Xem
							chi tiết</a> <br class="clr" />
					</div>
					<div class="span3 alignR">
						<form class="form-horizontal qtyFrm">
							<h3>
								<fmt:setLocale value = "vi_VN"/>
								<fmt:formatNumber value="${p.price}"/> đ
							</h3>
							<label class="checkbox"></label><br /> <a
								href="<c:url value="/them-vao-gio-hang?id=${p.id}"/>"
								class="btn btn-large btn-primary"> Thêm <i
								class=" icon-shopping-cart"></i></a> <a
								href="<c:url value="/home-product-detail?id=${p.id}"/>"
								class="btn btn-large"><i class="icon-zoom-in"></i></a>

						</form>
					</div>
				</div>
				<hr class="soft" />
			</c:forEach>
		</div>

		<div class="tab-pane  active" id="blockView">
			<ul class="thumbnails">
				<c:forEach items="${product.listResult}" var="p">
					<li class="span3">
						<div class="thumbnail">
							<a
								href="<c:url value="/home-product-detail?id=${p.id}"/>"><img
								src="${p.image}" style="width: 230px; height: 160px" alt="" /></a>
							<div class="caption">
								<h5>${p.name}</h5>
								<h4 style="text-align: center">
									<a class="btn"
										href="<c:url value="/home-product-detail?id=${p.id}"/>">
										<i class="icon-zoom-in"></i>
									</a> <a class="btn"
										href="<c:url value="/them-vao-gio-hang?id=${p.id}"/>">Thêm
										<i class="icon-shopping-cart"></i>
									</a> <a class="btn btn-primary" href="#"><fmt:formatNumber
											value="${p.price}" /> đ</a>
								</h4>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
			<hr class="soft" />
		</div>
	</div>
</div>