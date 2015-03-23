package kr.whenever.mybatis.mapper;

import junit.framework.TestCase;
import kr.whenever.mybatis.domain.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;

@ContextConfiguration("/applicationContext-test.xml")
public class UserMapperTest extends TestCase {

	@Autowired
	private UserMapper userMapper;
	
	public void testInsertUser() {
		User user = new User();
		this.userMapper.insertUser(user);
	}

}
