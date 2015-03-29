package kr.whenever.service;

import java.util.List;

import kr.whenever.domain.User;

public interface UserService {
	
	void registUser(User user);

	List<User> findUserList();

}
