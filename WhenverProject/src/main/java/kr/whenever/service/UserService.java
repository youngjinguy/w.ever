package kr.whenever.service;

import java.util.List;

import kr.whenever.domain.User;

public interface UserService {
	
	void registerUser(User user);
	
	void modifyUser(User user);
	
	void removeUser(String id);
	
	User findUser(String id);

	List<User> findUserList();

}
