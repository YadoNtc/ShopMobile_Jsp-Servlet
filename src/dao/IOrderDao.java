package dao;

import model.OrderModel;

public interface IOrderDao extends IGenericDao<OrderModel> {
	Long insertOrder(OrderModel orderModel);
	
	OrderModel findOne(Long id);
}
