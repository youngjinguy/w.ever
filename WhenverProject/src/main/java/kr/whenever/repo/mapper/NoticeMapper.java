package kr.whenever.repo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.whenever.domain.Notice;


public interface NoticeMapper {

	void insertNotice(Notice notice);

	void updateNotice(Notice notice);

	void deleteNotice(@Param("id") Long id);

	Notice selectNotice(@Param("id") Long id);

	List<Notice> selectNoticeList();

}
