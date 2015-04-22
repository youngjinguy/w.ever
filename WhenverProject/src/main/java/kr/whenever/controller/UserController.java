package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.User;
import kr.whenever.repo.mapper.UserMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
	private UserMapper userMapper;

	/**
	 * 사용자 목록
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView userList(){
		//
		List<User> users = this.userMapper.selectUserList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/userList");
		mav.addObject("users", users);
		return mav;
	}
	
	/**
	 * 사용자 등록 화면
	 * @return
	 */
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView registerUserForm(){
		//
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/userRegist");
		return mav;
	}
	
	/**
	 * 사용자 등록
	 * @param user
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView registUser(
			User user
			){
		//
		this.userMapper.insertUser(user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/user");
		return mav;
	}
	
	/**
	 * 사용자 수정 화면
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}/modify", method = RequestMethod.GET)
	public ModelAndView modifyUserForm(
			@PathVariable(value = "id") Long id
			){
		//
		User user = this.userMapper.selectUser(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/userModify");
		mav.addObject("user", user);
		return mav;
	}
	
	/**
	 * 사용자 수정
	 * @param id
	 * @param user
	 * @return
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView modifyUser(
			@PathVariable(value = "id") String id,
			User user
			){
		//
		this.userMapper.updateUser(user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/user");
		return mav;
	}
	
	/**
	 * 사용자 삭제
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}/remove", method = RequestMethod.POST)
	public ModelAndView removeUser(
			@PathVariable("id") Long id
			){
		//
		this.userMapper.deleteUser(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/user");
		return mav ;
	}
	
	/**
	 * 사용자 조회
	 * @return
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView showUser(
			@PathVariable("id") Long id
			){
		//
		User user = this.userMapper.selectUser(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/userView");
		mav.addObject("user", user);
		return mav;
	}
}
