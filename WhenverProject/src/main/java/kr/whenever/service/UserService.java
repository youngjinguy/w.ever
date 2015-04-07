package kr.whenever.service;

import java.util.List;

import kr.whenever.domain.User;

public interface UserService {
	
	void registUser(User user);
	
	void modifyUser(User user);
	
	void removeUser(Long id);
	
	User findUser(Long id);

	List<User> findUserList();

}
