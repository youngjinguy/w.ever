package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.User;
import kr.whenever.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
		List<User> users = this.userService.findUserList();
		model.addAttribute("users", users);
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
	
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String modifyUserForm(
			@PathVariable(value = "id") String id,
			Model model
			){
		User user = this.userService.findUser(id);
		model.addAttribute("user", user);
		return "/user/userModify";
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public String modifyUser(
			@PathVariable(value = "id") String id,
			@ModelAttribute User user
			){
		this.userService.modifyUser(user);
		return "redirect:/user";
	}
	
}
