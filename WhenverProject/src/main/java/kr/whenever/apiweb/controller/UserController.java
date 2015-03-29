package kr.whenever.apiweb.controller;

import kr.whenever.domain.User;
import kr.whenever.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public String userList(
			Model model
			){
		return "/user/userList";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String registUserForm(){
		return "/user/userRegist";
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String registUser(
			@ModelAttribute User user
			){
		this.userService.registUser(user);
		return "redirect:/user";
	}
	
}
