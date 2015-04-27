package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.Question;
import kr.whenever.repo.mapper.QuestionMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/question")
public class QuestionController {

	@Autowired
	private QuestionMapper questionMapper;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView questionList(){
		List<Question> questions = this.questionMapper.selectQuestionList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/question/questionList");
		mav.addObject("questions", questions);
		return mav;
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.GET)
	public ModelAndView registQuestionForm(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/question/questionRegist");
		return mav;
	}
	
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public ModelAndView registQuestion(
			Question question
			/*@RequestParam("title") String title,
			@RequestParam("contents") String contents,
			@RequestParam("type") String type*/
			){
		/*
		System.out.println("title : " + title);
		System.out.println("contents : " + contents);
		System.out.println("type : " + type);
		
		Question question = new Question();
		question.setQuestionTitle(title);
		question.setQuestionType(type);*/
		
		this.questionMapper.insertQuestion(question);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/question");
		return mav;
	}
	
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView modifyQuestionForm(
			@PathVariable(value = "id") Long id
			){
		Question question = this.questionMapper.selectQuestion(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/question/questionModify");
		mav.addObject("question", question);
		return mav;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView modifyQuestion(
			@PathVariable(value = "id") Long id,
			Question question
			){
		question.setId(id);		
		this.questionMapper.updateQuestion(question);		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/question");
		return mav;
	}
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public ModelAndView deleteQuestion(
			@PathVariable(value = "id") Long id
			){
		
		questionMapper.deleteQuestion(id);
		return new ModelAndView("redirect:/question");
	}

}
