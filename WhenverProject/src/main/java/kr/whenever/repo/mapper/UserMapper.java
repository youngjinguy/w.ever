package kr.whenever.repo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.whenever.domain.User;

public interface UserMapper {

	void insertUser(User user);

	void updateUser(User user);
	
	void deleteUser(@Param("id") Long id);
	
	User selectUser(@Param("id") Long id);

	List<User> selectUserList();
}
