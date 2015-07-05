package kr.whenever.controller;

import java.util.ArrayList;
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
//		List<Question> list = questionMapper.selectQuestionList();
		List<Question> list = getQuestions();
		return list;
	}
	
	private List<Question> getQuestions(){
		List<Question> list = new ArrayList<Question>();
		for(int index=0;index<5;index++){
			Question question = new Question(String.valueOf(index), "언어" + index, String.valueOf(index), "내용" + index);
			list.add(question);
		}
		return list;
	}
}
