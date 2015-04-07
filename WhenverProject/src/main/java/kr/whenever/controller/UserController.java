package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.User;
import kr.whenever.repo.mapper.UserMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private UserMapper userMapper;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView userList(){
		List<User> users = this.userMapper.selectUserList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/userList");
		mav.addObject("users", users);
		return mav;
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String registUserForm(){
		return "/user/userRegist";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public ModelAndView registUser(
			@ModelAttribute User user
			){
		this.userMapper.insertUser(user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/user");
		return mav;
	}
	
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView modifyUserForm(
			@PathVariable(value = "id") Long id
			){
		User user = this.userMapper.selectUser(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/userModify");
		mav.addObject("user", user);
		return mav;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView modifyUser(
			@PathVariable(value = "id") String id,
			@ModelAttribute User user
			){
		this.userMapper.updateUser(user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/user");
		return mav;
	}
	
}
