<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

	<div class="span9">
		<div class="well well-small">
			<h4>Sản phẩm nổi bật</h4>
			<div class="row-fluid">
				<div id="featured" class="carousel slide">
					<div class="carousel-inner">
						<div class="item active">						
							<ul class="thumbnails">
							
								<c:forEach var="item" items="${product.listResult}">	
									<li class="span3">
										<div class="thumbnail">
											<i class="tag"></i> <a
												href="#"><img
												src="${item.image}"
												style="width: 230px; height: 130px" alt=""></a>
											<div class="caption">
												<h5>${item.name}</h5>
												<h4>	
													<c:url var="editUrl" value="/home-product-detail">											
														<c:param name="id" value="${item.id}"/>
													</c:url>								
													<a class="btn"
														href="${editUrl}">Xem</a>
													<span class="pull-right">
														<fmt:setLocale value = "vi_VN"/>
	         											<fmt:formatNumber pattern="#,###,###" value ="${item.price}" type = "currency"/>
														đ</span>
												</h4>
											</div>
										</div>
									</li>															
								</c:forEach>																						
							</ul>
						</div>							
													
						<div class="item">
							<ul class="thumbnails">
								<c:forEach var="item" items="${product.listResult}">							
									<li class="span3">
										<div class="thumbnail">
											<i class="tag"></i> <a
												href="${editUrl}"><img
												src="${item.image}"
												style="width: 230px; height: 130px" alt=""></a>
											<div class="caption">
												<h5>${item.name}</h5>
												<h4>
													<c:url var="editUrl" value="/home-product-detail">														
														<c:param name="id" value="${item.id}"/>
													</c:url>
													<a class="btn"
														href="${editUrl}">Xem</a>
													<span class="pull-right">
														<fmt:setLocale value = "vi_VN"/>
	         											<fmt:formatNumber pattern="#,###,###" value ="${item.price}" type = "currency"/>
														đ</span>
												</h4>
											</div>
										</div>
									</li> 								
								</c:forEach>															
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<ul class="thumbnails">
             <c:forEach var="item" items="${product.listResult}"> 
                    <li class="span3">
                        <div class="thumbnail">
                            <a href="<c:url value="/home-product-detail?id=${item.id}"/>"><img src="${item.image}" style="width: 230px; height: 160px" alt=""></a>
                            <div class="caption">
                                <h5>${item.name}</h5>
                                <h4 style="text-align:center">
                                    <a class="btn" href="<c:url value="/home-product-detail?id=${item.id}"/>"> 
                                        <i class="icon-zoom-in"></i>
                                    </a> 
                                    <a class="btn" href="<c:url value="/them-vao-gio-hang?id=${item.id}"/>">Thêm <i class="icon-shopping-cart"></i></a> 
                                    <a class="btn btn-primary" href="#">
                                    	<fmt:formatNumber value="${item.price}"/> đ
                                   	</a>
                                </h4>
                            </div>
                        </div>
                    </li>
               </c:forEach>                 
            </ul>
	</div>

