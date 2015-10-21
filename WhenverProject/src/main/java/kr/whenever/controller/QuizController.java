package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.Quiz;
import kr.whenever.repo.mapper.QuizMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/quiz")
public class QuizController {

	@Autowired
	private QuizMapper quizMapper;

	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ModelAndView quizList(){
		//
		List<Quiz> quizs = this.quizMapper.selectQuizs();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/quizList");
		mav.addObject("quizs", quizs);
		return mav;
	}
	
	/**
	 * 문제 등록 화면
	 * @return
	 */
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView registerForm(){
		//
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/quizRegist");
		return mav;
	}
	
	/**
	 * 문제 등록
	 * @param quiz
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView register(
			Quiz quiz
			/*@RequestParam("title") String title,
			@RequestParam("contents") String contents,
			@RequestParam("type") String type*/
			){
		//
		this.quizMapper.insertQuiz(quiz);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/quiz/list");
		return mav;
	}
	
	
	@RequestMapping(value = "/{id}/modify", method = RequestMethod.GET)
	public ModelAndView modifyForm(
			@PathVariable(value = "id") int id
			){
		//
		Quiz quiz = this.quizMapper.selectQuiz(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/quizModify");
		mav.addObject("quiz", quiz);
		return mav;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView modify(
			@PathVariable(value = "id") int id,
			Quiz quiz
			){
		//
		quiz.setId(id);		
		this.quizMapper.updateQuiz(quiz);		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/quiz/list");
		return mav;
	}
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public ModelAndView delete(
			@PathVariable(value = "id") int id
			){
		//
		quizMapper.deleteQuiz(id);
		return new ModelAndView("redirect:/quiz/list");
	}
	
	/**
	 * 문제 조회
	 * @return
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView show(
			@PathVariable("id") int id
			){
		//
		Quiz quiz = this.quizMapper.selectQuiz(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/quiz/quizView");
		mav.addObject("quiz", quiz);
		return mav;
	}
}
