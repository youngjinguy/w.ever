package kr.whenever.repo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import kr.whenever.domain.News;

public interface NewsMapper {

	void insertNews(News news);

	void updateNews(News news);
	
	void deleteNews(@Param("id") int id);
	
	News selectNews(@Param("id") int id);

	List<News> selectNewsList();
}
