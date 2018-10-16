package hstc.bsol.dao;

import java.util.List;

import hstc.bsol.pojo.User;

public interface UserDao {

	// 根据用户名和密码判断用户是否存在
	public boolean isExistUser(String username, String pwd);

	// 判断用户名是否已被使用
	public boolean isExistUsername(String username);

	// 添加用户
	public boolean addUser(User user);

	// 根据用户id更新个人信息,aspect更新方面（ perInformaction 不包括收货地址的个人信息，perAddress 收货地址的个人信息）
	boolean updateUserInformationById(User user, String aspect);

	// 根据id查询用户个人信息
	public User selectUserById(int id);
	
	// 根据用户名修改密码
	public boolean chgPwdByUserName(User user);

	// 根据用户名和密码查询用户id
	public int findIdbyUsernameAndPwd(User user);

}
