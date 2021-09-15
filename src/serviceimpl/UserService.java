package serviceimpl;

import javax.inject.Inject;

import dao.IUserDao;
import model.UserModel;
import service.IUserService;

public class UserService implements IUserService {
	
	@Inject
	private IUserDao userDao;

	@Override
	public UserModel findByUserNameAndPassword(String userName, String password, Integer status) {		
		return userDao.findByUserNameAndPassword(userName, password, status);
	}

}
