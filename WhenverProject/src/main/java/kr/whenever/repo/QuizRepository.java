package kr.whenever.repo;

import java.util.List;

import kr.whenever.domain.Quiz;
import kr.whenever.repo.mapper.QuizMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QuizRepository {
	@Autowired
	private QuizMapper quizMapper;

	public void registQuiz(Quiz quiz) {
		this.quizMapper.insertQuiz(quiz);
	}

	public void modifyQuiz(Quiz quiz) {
		this.quizMapper.updateQuiz(quiz);
	}
	
	public void removeQuiz(int id) {
		this.quizMapper.deleteQuiz(id);
	}
	
	public Quiz findQuiz(int id) {
		return this.quizMapper.selectQuiz(id);
	}

	public List<Quiz> findQuizs() {
		return this.quizMapper.selectQuizs();
	}
}
