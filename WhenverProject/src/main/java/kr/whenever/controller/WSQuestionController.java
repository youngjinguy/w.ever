package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.Question;
import kr.whenever.repo.mapper.QuestionMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ws/question")
public class WSQuestionController {

	@Autowired
	private QuestionMapper questionMapper;
	
	@ResponseBody
	@RequestMapping(method = RequestMethod.GET)
	public List<Question> questionList(){
		List<Question> list = questionMapper.selectQuestionList();
		
		return list;
	}
	
	
	
}
