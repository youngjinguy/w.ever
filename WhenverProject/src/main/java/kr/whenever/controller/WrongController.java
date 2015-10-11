package kr.whenever.controller;

import java.util.List;
import kr.whenever.domain.Wrong;
import kr.whenever.repo.mapper.WrongMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/wrong")
public class WrongController {
	
	@Autowired
	private WrongMapper wrongMapper;
	/**
	 * 오답 노트 처음 화면
	 * @return
	 */
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ModelAndView wrongList(){
		List<Wrong> wrongs = this.wrongMapper.selectAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/wrong/wrongList");
		mav.addObject("wrongs", wrongs);
		return mav;
	}
	
	/**
	 * 오답노트 등록 화면
	 * @return
	 */
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView registerWrongForm(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/wrong/wrongRegist");
		return mav;
	}
	
	/**
	 * 오답노트 등록
	 * @param wrong
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView registerWrong(
			Wrong wrong
			/*@RequestParam("title") String title,
			@RequestParam("contents") String contents,
			@RequestParam("type") String type*/
			){
		//
		this.wrongMapper.insertWrong(wrong);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/wrong/list");
		return mav;
	}
	
	/**
	 * 오답노트 수정화면
	 * @param uid
	 * @param qid
	 * @return
	 */
	@RequestMapping(value = "/{uid}/{qid}/modify", method = RequestMethod.GET)
	public ModelAndView modifyWrongForm(
			@PathVariable(value = "uid") String uid, 
			@PathVariable(value = "qid") String qid
			){
		//
		Wrong wrong = this.wrongMapper.selectWrong(uid, qid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/wrong/wrongModify");
		mav.addObject("wrong", wrong);
		return mav;
	}
	
	/**
	 * 오답노트 수정
	 * @param uid
	 * @param qid
	 * @param wrong
	 * @return
	 */
	@RequestMapping(value = "/{uid}/{qid}", method = RequestMethod.POST)
	public ModelAndView modifyWrong(
			@PathVariable(value = "uid") String uid,
			@PathVariable(value = "qid") String qid,
			Wrong wrong
			){
		//
		wrong.setUid(uid);
		wrong.setQid(qid);
		this.wrongMapper.updateWrong(wrong);		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/wrong/list");
		return mav;
	}
	
	/**
	 * 오답노트 삭제
	 * @param uid
	 * @param qid
	 * @return
	 */
	@RequestMapping(value = "/{uid}/{qid}/delete", method = RequestMethod.POST)
	public ModelAndView deleteWrong(
			@PathVariable(value = "uid") String uid,
			@PathVariable(value = "qid") String qid
			){
		//
		wrongMapper.deleteWrong(uid, qid);
		return new ModelAndView("redirect:/wrong/list");
	}
	
	/**
	 * 오답노트 조회
	 * @param uid
	 * @param qid
	 * @return
	 */
	@RequestMapping(value = "/{uid}/{qid}", method = RequestMethod.GET)
	public ModelAndView showWrong(
			@PathVariable("uid") String uid,
			@PathVariable("qid") String qid
			){
		//
		Wrong wrong = this.wrongMapper.selectWrong(uid, qid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/wrong/wrongView");
		mav.addObject("wrong", wrong);
		return mav;
	}
}
