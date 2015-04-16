package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.User;
import kr.whenever.repo.mapper.UserMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/ws/user")
public class WSUserController {
	
	@Autowired
	private UserMapper userMapper;

	@RequestMapping(method = RequestMethod.GET)
	public @ResponseBody List<User> userListData(){
		List<User> users = this.userMapper.selectUserList();
		return users;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public @ResponseBody User userData(
			@PathVariable(value = "id") Long id
			){
		User user = this.userMapper.selectUser(id);
		return user;
	}
}
