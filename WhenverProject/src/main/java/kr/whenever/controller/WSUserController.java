package kr.whenever.controller;

import java.util.List;
import java.util.Map;

import kr.whenever.domain.User;
import kr.whenever.repo.mapper.UserMapper;
import kr.whenever.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/ws/user")
public class WSUserController {
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public @ResponseBody List<User> userListData() {
		List<User> users = this.userMapper.selectUserList();
		return users;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public @ResponseBody User userData(
			@PathVariable(value = "id") String id
			) {
		User user = this.userMapper.selectUser(id);
		return user;
	}
	
	@RequestMapping(value = "/token", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> getToken(
			@RequestParam("id") String id,
			@RequestParam("password") String password
			) {
		Map<String, String> identifiedUser = this.userService.identifiedUser(id, password);
		return identifiedUser;
	}
}
