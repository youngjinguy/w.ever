package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.Notice;
import kr.whenever.domain.User;
import kr.whenever.repo.mapper.NoticeMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NoticeController {

	@Autowired
	private NoticeMapper noticeMapper;

	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public ModelAndView userList() {
		List<Notice> notices = this.noticeMapper.selectNoticeList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/notice/noticeList");
		mav.addObject("notices", notices);
		return mav;
	}

	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public String registUserForm() {
		return "/notice/userRegist";
	}

	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public ModelAndView registUser
	(@ModelAttribute Notice notice) {
		this.noticeMapper.insertNotice(notice);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/notice");
		return mav;
	}
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView modifyNoticeForm(
			@PathVariable(value = "id") Long id
			){
		Notice notice = this.noticeMapper.selectNotice(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/notice/noticeModify");
		mav.addObject("notice", notice);
		return mav;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView modifyNotice(
			@PathVariable(value = "id") String id,
			@ModelAttribute Notice notice
			){
		this.noticeMapper.updateNotice(notice);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/notice");
		return mav;
	}
	
}
