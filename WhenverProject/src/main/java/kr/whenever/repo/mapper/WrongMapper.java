package kr.whenever.repo.mapper;

import java.util.List;

import kr.whenever.domain.Wrong;

import org.apache.ibatis.annotations.Param;

public interface WrongMapper {
	void insertWrong(Wrong wrong);

	void updateWrong(Wrong wrong);
	
	void deleteWrong(@Param("uid") String uid, @Param("qid") String qid);
	
	Wrong selectWrong(@Param("uid") String uid, @Param("qid") String qid);

	List<Wrong> selectWrongs(@Param("uid") String uid);
	
	List<Wrong> selectAll();
}
