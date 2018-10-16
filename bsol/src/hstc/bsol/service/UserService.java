package hstc.bsol.service;

import java.util.List;

import hstc.bsol.dao.impl.UserDaoImpl;
import hstc.bsol.pojo.User;

public class UserService {

	private UserDaoImpl userDaoImpl;
	
	public UserService() {
		userDaoImpl = new UserDaoImpl();
	}
	
	
	// 根据用户名和密码判断用户是否存在
	public boolean isExistUser(String username, String pwd) {
		return false;
	}

	// 判断用户名是否已被使用
	public boolean isExistUsername(String username) {
		return userDaoImpl.isExistUsername(username);
	}

	// 添加用户
	public boolean addUser(User user) {
		return false;
	}

	// 根据用户id更新个人信息
	//aspect更新方面（ informaction 不包括收货地址的个人信息，address 收货地址的个人信息）
	public boolean updateUserInformationById(User user,String aspect) {
		return userDaoImpl.updateUserInformationById(user, aspect);
	}

	// 根据id查询用户个人信息
	public User selectUserById(int id) {
		return userDaoImpl.selectUserById(id);
	}

	// 根据用户名修改密码
	public boolean chgPwdByUserName(User user) {
		return false;
	}

	// 根据用户名和密码查询用户id
	public int findIdbyUsernameAndPwd(User user) {
		return 0;
	}
}
