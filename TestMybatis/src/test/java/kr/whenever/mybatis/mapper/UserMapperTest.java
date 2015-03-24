package kr.whenever.mybatis.mapper;

import kr.whenever.mybatis.domain.User;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext-test.xml")
public class UserMapperTest {
	
	@Autowired
	private UserMapper userMapper;

	@Test
	public void testInsertUser() {
		User user = new User();
		user.setId("0001");
		user.setEmail("youngjinguy@naver.com");
		user.setCellPhoneNo("010-7229-XXXX");
		user.setBirthDate("1989-01-29");
		this.userMapper.insertUser(user);
	}

}
