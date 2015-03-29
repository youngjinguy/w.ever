package kr.whenever.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.whenever.domain.User;
import kr.whenever.repo.UserRepository;
import kr.whenever.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public void registUser(User user) {
		this.userRepository.registUser(user);
	}
	
	@Override
	public List<User> findUserList() {
		return this.userRepository.findUserList();
	}
	
}
