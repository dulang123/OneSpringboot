package epaylinks.service.impl;

import epaylinks.mapper.UserMapper;
import epaylinks.model.User;
import epaylinks.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements IUserService
{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> getUserList()
	{
		// TODO Auto-generated method stub
		List<User> list = userMapper.findUserInfo();
		return list;
	}
	
}
