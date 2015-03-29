package kr.whenever.repo.mapper;

import java.util.List;

import kr.whenever.domain.User;

public interface UserMapper {

	void insertUser(User user);

	List<User> selectUserList();
	
}
