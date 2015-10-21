package kr.whenever.repo.mapper;

import java.util.List;

import kr.whenever.domain.Quiz;

import org.apache.ibatis.annotations.Param;

public interface QuizMapper {
	void insertQuiz(Quiz quiz);

	void updateQuiz(Quiz quiz);
	
	void deleteQuiz(@Param("id") int id);
	
	Quiz selectQuiz(@Param("id") int id);

	List<Quiz> selectQuizs();
}
