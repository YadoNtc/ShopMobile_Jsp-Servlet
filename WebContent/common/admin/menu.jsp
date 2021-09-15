<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>

<div id="left">
	<div class="media user-media well-small">
		<a class="user-link" href="#"> <img
			class="media-object img-thumbnail user-img"
			style="width: 64px; height: 64px;" alt=""
			src="/Project1/template/images/admin-web.jpg">
		</a> <br>
		<div class="media-body">
			<h5 class="media-heading">${USERMODEL.fullName}</h5>
			<ul class="list-unstyled user-info">
				<li><a class="btn btn-success btn-xs btn-circle"
					style="width: 10px; height: 12px;"></a> Online</li>
			</ul>
		</div>
		<br>
	</div>
	<ul id="menu" class="collapse">
		<li class="panel"><a href="<c:url value="/admin-home"/>"> <i
				class="icon-dashboard"></i> Home
		</a></li>
	
		<li class="panel"><a href="<c:url value="/admin-product?type=list&page=1&maxPageItem=2&sortName=name&sortBy=desc"/>"> <i
				class="icon-trophy"></i> Sản phẩm
		</a></li>
		
		<li class="panel"><a href="<c:url value="/admin-catagory?page=1&maxPageItem=2&sortName=name&sortBy=desc"/>"> <i
				class="icon-indent-left"></i> Loại sản phẩm
		</a></li>
	</ul>
</div>