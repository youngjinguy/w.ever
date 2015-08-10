package kr.whenever.service;

import java.util.List;
import java.util.Map;

import kr.whenever.domain.User;

public interface UserService {
	
	void registerUser(User user);
	
	void modifyUser(User user);
	
	void removeUser(String id);
	
	User findUser(String id);

	List<User> findUserList();
	
	Map<String, String> identifiedUser(String id, String password);

}
