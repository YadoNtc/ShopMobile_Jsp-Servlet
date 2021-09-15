package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.OrderModel;

public class OrderMapper implements IRowMapper<OrderModel>{

	@Override
	public OrderModel mapRow(ResultSet resultSet) {
		try {
			OrderModel order = new OrderModel();
			order.setId(resultSet.getLong("id"));
			order.setShipName(resultSet.getString("shipName"));
			order.setShipEmail(resultSet.getString("shipEmail"));
			order.setShipMobile(resultSet.getString("shipMobile"));
			order.setShipAdress(resultSet.getString("shipAdress"));	
			order.setCreatedDate(resultSet.getTimestamp("createdDate"));
			return order;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
