package kr.whenever.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.whenever.domain.User;
import kr.whenever.domain.common.UserIdentifiedType;
import kr.whenever.repo.UserRepository;
import kr.whenever.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	//
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public void registerUser(User user) {
		//
		this.userRepository.registerUser(user);
	}
	
	@Override
	public void modifyUser(User user) {
		//
		this.userRepository.modifyUser(user);
		
	}
	
	@Override
	public void removeUser(String id) {
		//
		this.userRepository.removeUser(id);
	}
	
	@Override
	public User findUser(String id) {
		//
		return this.userRepository.findUser(id);
	}

	@Override
	public List<User> findUserList() {
		//
		return this.userRepository.findUserList();
	}
	
	@Override
	public Map<String, String> identifiedUser(String id, String password) {
		//
		User user = this.userRepository.findUser(id);
		Map<String, String> result = new HashMap<String, String>();
		if(user == null){
			result.put(UserIdentifiedType.NONEXISTENCE.getName(), UserIdentifiedType.NONEXISTENCE.getCode());
			return null;
		}
		if(password.equals(user.getPassword())){
			result.put(UserIdentifiedType.SUCCESS.getName(), user.getToken());
		} else {
			result.put(UserIdentifiedType.FAIL.getName(), UserIdentifiedType.FAIL.getCode());
		}
		return result;
	}
}
