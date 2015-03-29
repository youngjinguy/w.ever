package kr.whenever.repo;

import java.util.List;

import kr.whenever.domain.User;
import kr.whenever.repo.mapper.UserMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepository{

	@Autowired
	private UserMapper userMapper;

	public void registUser(User user) {
		this.userMapper.insertUser(user);
	}

	public List<User> findUserList() {
		return this.userMapper.selectUserList();
	}

	
}
