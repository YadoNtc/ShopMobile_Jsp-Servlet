package daoimpl;

import java.util.List;

import dao.IUserDao;
import mapper.UserMapper;
import model.UserModel;

public class UserDao extends AbstractDao<UserModel> implements IUserDao {

	@Override
	public UserModel findByUserNameAndPassword(String userName, String password, Integer status) {
		StringBuilder sql = new StringBuilder("SELECT * FROM users AS u ");
		sql.append("JOIN roles AS r ON r.id = u.roleId ");
		sql.append("WHERE userName = ? AND password = ? AND status = ? ");
		List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password, status);
		return users.isEmpty() ? null : users.get(0);
	}

	

}
