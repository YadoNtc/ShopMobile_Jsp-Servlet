package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.CategoryModel;

public class CategoryMapper implements IRowMapper<CategoryModel> {

	@Override
	public CategoryModel mapRow(ResultSet resultSet) {
		try {
			CategoryModel catagory = new CategoryModel();
			catagory.setId(resultSet.getLong("id"));
			catagory.setName(resultSet.getString("name"));
			return catagory;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
