package kr.whenever.domain;

public class Question {
	private Long    id;
	private String  studentType;
	private String  questionType;
	private String  rightAnswer;
	private String  questionTitle;		
	private String  questionYearMonth;
	private String  questionUri;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	public String getStudentType() {
		return studentType;
	}
	public void setStudentType(String studentType) {
		this.studentType = studentType;
	}
	public String getQuestionType() {
		return questionType;
	}
	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}
	public String getRightAnswer() {
		return rightAnswer;
	}
	public void setRightAnswer(String rightAnswer) {
		this.rightAnswer = rightAnswer;
	}
	public String getQuestionTitle() {
		return questionTitle;
	}
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	public String getQuestionYearMonth() {
		return questionYearMonth;
	}
	public void setQuestionYearMonth(String questionYearMonth) {
		this.questionYearMonth = questionYearMonth;
	}
	public String getQuestionUri() {
		return questionUri;
	}
	public void setQuestionUri(String questionUri) {
		this.questionUri = questionUri;
	}
	
}
