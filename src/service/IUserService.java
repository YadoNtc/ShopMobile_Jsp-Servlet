package service;

import model.UserModel;

public interface IUserService {
	public UserModel findByUserNameAndPassword(String userName, String password, Integer status);
}
