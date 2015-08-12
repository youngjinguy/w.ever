package kr.whenever.repo;

import java.util.List;

import kr.whenever.domain.Notice;
import kr.whenever.repo.mapper.NoticeMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeRepository{

	@Autowired
	private NoticeMapper noticeMapper;

	public void registerNotice(Notice notice) {
		this.noticeMapper.insertNotice(notice);
	}

	public void modifyNotice(Notice notice) {
		this.noticeMapper.updateNotice(notice);
	}
	
	public void removeNotice(Long id) {
		this.noticeMapper.deleteNotice(id);
	}
	
	public Notice findNotice(Long id) {
		return this.noticeMapper.selectNotice(id);
	}

	public List<Notice> findNoticeList() {
		return this.noticeMapper.selectNoticeList();
	}
	
}