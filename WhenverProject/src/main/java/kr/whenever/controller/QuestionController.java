package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.Question;
import kr.whenever.repo.mapper.QuestionMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/question")
public class QuestionController {

	@Autowired
	private QuestionMapper questionMapper;

	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ModelAndView questionList(){
		//
		List<Question> questions = this.questionMapper.selectQuestions();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/question/questionList");
		mav.addObject("questions", questions);
		return mav;
	}
	
	/**
	 * 문제 등록 화면
	 * @return
	 */
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView registerQuestionForm(){
		//
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/question/questionRegister");
		return mav;
	}
	
	/**
	 * 문제 등록
	 * @param question
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView registerQuestion(
			Question question
			/*@RequestParam("title") String title,
			@RequestParam("contents") String contents,
			@RequestParam("type") String type*/
			){
		//
		this.questionMapper.insertQuestion(question);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/question");
		return mav;
	}
	
	
	@RequestMapping(value = "/{id}/modify", method = RequestMethod.GET)
	public ModelAndView modifyQuestionForm(
			@PathVariable(value = "id") int id
			){
		//
		Question question = this.questionMapper.selectQuestion(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/question/questionModify");
		mav.addObject("question", question);
		return mav;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView modifyQuestion(
			@PathVariable(value = "id") int id,
			Question question
			){
		//
		question.setId(id);		
		this.questionMapper.updateQuestion(question);		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/question");
		return mav;
	}
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public ModelAndView deleteQuestion(
			@PathVariable(value = "id") int id
			){
		//
		questionMapper.deleteQuestion(id);
		return new ModelAndView("redirect:/question");
	}
	
	/**
	 * 문제 조회
	 * @return
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView showQuestion(
			@PathVariable("id") int id
			){
		//
		Question question = this.questionMapper.selectQuestion(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/question/questionView");
		mav.addObject("question", question);
		return mav;
	}
}
