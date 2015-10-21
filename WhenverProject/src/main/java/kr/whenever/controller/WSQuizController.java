package kr.whenever.controller;

import java.util.ArrayList;
import java.util.List;

import kr.whenever.domain.Quiz;
import kr.whenever.repo.mapper.QuizMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ws/question")
public class WSQuizController {

	@Autowired
	private QuizMapper questionMapper;
	
	@ResponseBody
	@RequestMapping(method = RequestMethod.GET)
	public List<Quiz> questionList(){
//		List<Quiz> list = questionMapper.selectQuizList();
		List<Quiz> list = getQuizs();
		return list;
	}
	
	private List<Quiz> getQuizs(){
		List<Quiz> list = new ArrayList<Quiz>();
		for(int index=0;index<5;index++){
			Quiz question = new Quiz(index, "언어" + index, String.valueOf(index), "내용" + index);
			list.add(question);
		}
		return list;
	}
}
