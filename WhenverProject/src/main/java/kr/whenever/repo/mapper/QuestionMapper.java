package kr.whenever.repo.mapper;

import java.util.List;

import kr.whenever.domain.Question;

import org.apache.ibatis.annotations.Param;

public interface QuestionMapper {
	void insertQuestion(Question question);

	void updateQuestion(Question question);
	
	void deleteQuestion(@Param("id") String id);
	
	Question selectQuestion(@Param("id") String id);

	List<Question> selectQuestions();
}
