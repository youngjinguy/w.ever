package kr.whenever.domain;

public class Quiz {
	/** 문제ID */
	private int id;

	/** 문제타입(과목) */
	private String section;
	
	/** 문제 */
	private String content;

	/** 정답 */
	private String answer;
	
	/** 보기1 */
	private String selection1;
	
	/** 보기2 */
	private String selection2;
	
	/** 보기3 */
	private String selection3;
	
	/** 보기4 */
	private String selection4;

	/** 보기5 */
	private String selection5;
	
	/** 문제키워드 */
	private String keyword;
	
	
	public Quiz() {
		//
	}
	
	public Quiz(int id, String section, String answer, String content){
		//
		this.id = id;
		this.section = section;
		this.answer = answer;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAnswer() {
		return answer;
	}
	
	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getSelection1() {
		return selection1;
	}

	public void setSelection1(String selection1) {
		this.selection1 = selection1;
	}

	public String getSelection2() {
		return selection2;
	}

	public void setSelection2(String selection2) {
		this.selection2 = selection2;
	}

	public String getSelection3() {
		return selection3;
	}

	public void setSelection3(String selection3) {
		this.selection3 = selection3;
	}

	public String getSelection4() {
		return selection4;
	}

	public void setSelection4(String selection4) {
		this.selection4 = selection4;
	}

	public String getSelection5() {
		return selection5;
	}

	public void setSelection5(String selection5) {
		this.selection5 = selection5;
	}

	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}
