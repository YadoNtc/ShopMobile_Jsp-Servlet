package dao;

import model.UserModel;

public interface IUserDao extends IGenericDao<UserModel> {
	UserModel findByUserNameAndPassword(String userName, String password, Integer status);
}
