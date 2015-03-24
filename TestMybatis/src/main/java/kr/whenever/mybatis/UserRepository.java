package kr.whenever.mybatis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.whenever.mybatis.domain.User;
import kr.whenever.mybatis.mapper.UserMapper;

@Repository
public class UserRepository implements UserMapper{
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public void insertUser(User user) {
		this.userMapper.insertUser(user);
	}
}
