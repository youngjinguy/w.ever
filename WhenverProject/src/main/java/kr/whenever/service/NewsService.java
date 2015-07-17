package kr.whenever.service;

import java.util.List;

import kr.whenever.domain.News;

public interface NewsService {
	
	void registerNews(News news);
	
	void modifyNews(News news);
	
	void removeNews(int id);
	
	News findNews(int id);

	List<News> findNewsList();

}
