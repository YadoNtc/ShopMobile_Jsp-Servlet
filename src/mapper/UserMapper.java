package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.RoleModel;
import model.UserModel;

public class UserMapper implements IRowMapper<UserModel>{

	@Override
	public UserModel mapRow(ResultSet resultSet) {
		try {
			UserModel model = new UserModel();
			model.setId(resultSet.getLong("id"));
			model.setUserName(resultSet.getString("userName"));
			model.setPassword(resultSet.getString("password"));
			model.setFullName(resultSet.getString("fullName"));
			model.setStatus(resultSet.getInt("status"));
			try {
				RoleModel role = new RoleModel();
				role.setCode(resultSet.getString("code"));
				role.setName(resultSet.getString("name"));
				model.setRole(role);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return model;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
