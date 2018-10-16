package hstc.bsol.dao.impl;

import java.util.List;

import hstc.bsol.dao.UserDao;
import hstc.bsol.pojo.User;
import hstc.bsol.tool.DbUtil;

public class UserDaoImpl implements UserDao {

	// 判断用户名是否已被使用，已被使用返回true，未被使用返回false
	@Override
	public boolean isExistUsername(String username) {
		String sql = "select * from user where username = ?";
		Object[] obj = { username };
		List<User> listUser = DbUtil.getBeanClassQuery(User.class, sql, obj);
		if (listUser.isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

	// 更新用户id更新用户信息,aspect更新方面（ informaction 不包括收货地址的个人信息，address 收货地址的个人信息）
	@Override
	public boolean updateUserInformationById(User user,String aspect) {
		
		if(aspect.equals("perInformaction")) {
			String sql = "update user set username = ？,gender = ?,tiedmail = ? where id = ?";
			Object[] obj = { user.getUsername(), user.getPassword(), user.getGender(), user.getTiedmail(), user.getId() };
			return DbUtil.executeUpdate(sql, obj);
		}else if(aspect.equals("perAddress")){
			String sql = "update user set username = ？,gender = ?,tiedmail = ? where id = ?";
			Object[] obj = { user.getUsername(), user.getPassword(), user.getGender(), user.getTiedmail(), user.getId() };
			return DbUtil.executeUpdate(sql, obj);
		}else {
			System.out.println("输入的更新方面不存在");
			return false;
		}
	}

	// 根据id查询用户信息
	@Override
	public User selectUserById(int id) {
		String sql = "select * from user where id = ?";
		Object[] obj = {id};
		List<User> listUser = DbUtil.getBeanClassQuery(User.class, sql, obj);
		try {
			return listUser.get(0);
		} catch (Exception e) {
			System.out.println(listUser.size());
			throw new RuntimeException("该用户id没有对应的个人信息");
		}
	}

	@Override
	public boolean isExistUser(String username, String pwd) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean chgPwdByUserName(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int findIdbyUsernameAndPwd(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

}
