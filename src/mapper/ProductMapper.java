package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ProductModel;

public class ProductMapper implements IRowMapper<ProductModel>{

	@Override
	public ProductModel mapRow(ResultSet resultSet) {
		try {
			ProductModel model = new ProductModel();
			model.setId(resultSet.getLong("id"));
			model.setName(resultSet.getString("name"));
			model.setPrice(resultSet.getLong("price"));
			model.setCode(resultSet.getString("code"));
			model.setImage(resultSet.getString("image"));
			model.setDescription(resultSet.getString("description"));
			model.setDetail(resultSet.getString("detail"));
			model.setQuantity(resultSet.getInt("quantity"));
			model.setCreatedDate(resultSet.getTimestamp("createdDate"));
			model.setCreatedBy(resultSet.getString("createdBy"));
			model.setCategoryId(resultSet.getLong("categoryId"));
			model.setProducerId(resultSet.getLong("producerId"));		
			return model;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
