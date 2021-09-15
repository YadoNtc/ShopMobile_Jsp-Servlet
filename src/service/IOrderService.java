package service;

import javax.servlet.http.HttpServletRequest;

import model.OrderModel;

public interface IOrderService {

	OrderModel insertOrder(OrderModel order);
	
	void delCart(HttpServletRequest req, Long id);
	
}
