package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.Notice;
import kr.whenever.repo.mapper.NoticeMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/notice")
public class NoticeController {

	@Autowired
	private NoticeMapper noticeMapper;

	@RequestMapping(value="/list",  method = RequestMethod.GET)
	public ModelAndView noticeList() {
		List<Notice> notices = this.noticeMapper.selectNoticeList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/notice/noticeList");
		mav.addObject("notices", notices);
		return mav;
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String registNoticeForm() {
		return "/notice/noticeRegist";
	}

	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView registNotice
	(@ModelAttribute Notice notice) {
		this.noticeMapper.insertNotice(notice);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/notice/list");
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
			@PathVariable(value = "id") Long id,
			@ModelAttribute Notice notice
			){
		this.noticeMapper.updateNotice(notice);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/notice/list"); 
		return mav;
	}
	
}
