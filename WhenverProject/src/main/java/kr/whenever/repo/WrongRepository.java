package kr.whenever.repo;
import java.util.List;

import kr.whenever.domain.Wrong;
import kr.whenever.repo.mapper.WrongMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WrongRepository {
	@Autowired
	private WrongMapper wrongMapper;
	
	public void registWrong(Wrong wrong) {
		this.wrongMapper.insertWrong(wrong);
	}

	public void modifyWrong(Wrong wrong) {
		this.wrongMapper.updateWrong(wrong);
	}
	
	public void removeWrong(String uid, String qid) {
		this.wrongMapper.deleteWrong(uid, qid);
	}
	
	public Wrong findWrong(String uid, String qid) {
		return this.wrongMapper.selectWrong(uid,qid);
	}

	public List<Wrong> findWrongs(String uid) {
		return this.wrongMapper.selectWrongs(uid);
	}
	
	public List<Wrong> findAll() {
		return this.wrongMapper.selectAll();
	}
}
