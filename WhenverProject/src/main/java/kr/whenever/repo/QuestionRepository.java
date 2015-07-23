package kr.whenever.repo;

import java.util.List;

import kr.whenever.domain.Question;
import kr.whenever.repo.mapper.QuestionMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionRepository {
	@Autowired
	private QuestionMapper questionMapper;

	public void registQuestion(Question question) {
		this.questionMapper.insertQuestion(question);
	}

	public void modifyQuestion(Question question) {
		this.questionMapper.updateQuestion(question);
	}
	
	public void removeQuestion(int id) {
		this.questionMapper.deleteQuestion(id);
	}
	
	public Question findQuestion(int id) {
		return this.questionMapper.selectQuestion(id);
	}

	public List<Question> findQuestions() {
		return this.questionMapper.selectQuestions();
	}
}
