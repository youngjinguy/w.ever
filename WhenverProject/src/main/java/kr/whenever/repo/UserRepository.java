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

	public void modifyUser(User user) {
		this.userMapper.updateUser(user);
	}
	
	public void removeUser(Long id) {
		this.userMapper.deleteUser(id);
	}
	
	public User findUser(Long id) {
		return this.userMapper.selectUser(id);
	}

	public List<User> findUserList() {
		return this.userMapper.selectUserList();
	}
	
}
