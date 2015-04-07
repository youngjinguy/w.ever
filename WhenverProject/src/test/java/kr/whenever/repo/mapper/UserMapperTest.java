package kr.whenever.repo.mapper;

import static org.junit.Assert.*;

import java.util.List;

import kr.whenever.domain.User;
import kr.whenever.shared.WheneverDbUnitTest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.github.springtestdbunit.annotation.DatabaseOperation;
import com.github.springtestdbunit.annotation.DatabaseSetup;
import com.github.springtestdbunit.annotation.DatabaseTearDown;

@DatabaseSetup(value = "/dataset/User.xml", type = DatabaseOperation.INSERT)
@DatabaseTearDown(value = "/dataset/User.xml", type = DatabaseOperation.DELETE_ALL)
public class UserMapperTest extends WheneverDbUnitTest{
	
	@Autowired
	private UserMapper userMapper;

	@Test
	public void testInsertUser() {
		User user = new User("jaewoong.yoon@oracle.com", "010-5101-XXXX");
		this.userMapper.insertUser(user);
		
		User insertedUser = this.userMapper.selectUser(3L);
		
		assertEquals(3, (long)insertedUser.getId());
		assertEquals(user.getEmail(), insertedUser.getEmail());
		assertEquals(user.getCellPhoneNo(), insertedUser.getCellPhoneNo());
	}

	@Test
	public void testUpdateUser() {
//		User user = this.userMapper.selectUser(1L);
//		user.setCellPhoneNo("010-7229-XXX1");
//		this.userMapper.updateUser(user);
//		
//		User updatedUser = this.userMapper.selectUser(1L);
//		
//		assertEquals(user.getId(), updatedUser.getId());
//		assertEquals(user.getEmail(), updatedUser.getEmail());
//		assertEquals(user.getCellPhoneNo(), updatedUser.getCellPhoneNo());
	}

	@Test
	public void testDeleteUser() {
		this.userMapper.deleteUser(1L);
		
		User user = this.userMapper.selectUser(1L);
		
		assertNull(user);
	}

	@Test
	public void testSelectUser() {
//		User user = this.userMapper.selectUser(1L);
//		assertEquals(1, (long)user.getId());
//		assertEquals("yjkim2@nextree.co.kr", user.getEmail());
//		assertEquals("010-7229-XXXX", user.getCellPhoneNo());
//		assertEquals("1989-01-29", user.getBirthDate());
	}

	@Test
	public void testSelectUserList() {
		List<User> users = this.userMapper.selectUserList();
		assertEquals(2, users.size());
	}

}
