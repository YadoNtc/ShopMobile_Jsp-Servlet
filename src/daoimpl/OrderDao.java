package daoimpl;

import java.util.List;

import dao.IOrderDao;
import mapper.OrderMapper;
import model.OrderModel;

public class OrderDao extends AbstractDao<OrderModel> implements IOrderDao{

	@Override
	public Long insertOrder(OrderModel orderModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO Orders ");
		sql.append("(shipName, shipEmail, shipMobile, shipAdress, createdDate) ");
		sql.append("VALUES (?, ?, ?, ?, ?) ");
		return insert(sql.toString(), orderModel.getShipName(), orderModel.getShipEmail(), 
				orderModel.getShipMobile(), orderModel.getShipAdress(), orderModel.getCreatedDate());
	}

	@Override
	public OrderModel findOne(Long id) {
		String sql = "SELECT * FROM Orders WHERE id = ?";
		List<OrderModel> order = query(sql, new OrderMapper(), id);
		return order.isEmpty() ? null : order.get(0);
	}

	

}
