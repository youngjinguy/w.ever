package kr.whenever.repo;

import java.util.List;

import kr.whenever.domain.News;
import kr.whenever.repo.mapper.NewsMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NewsRepository {
	
	@Autowired
	private NewsMapper newsMapper;

	public void registerNews(News news) {
		this.newsMapper.insertNews(news);
	}

	public void modifyNews(News news) {
		this.newsMapper.updateNews(news);
	}
	
	public void removeNews(int id) {
		this.newsMapper.deleteNews(id);
	}
	
	public News findNews(int id) {
		return this.newsMapper.selectNews(id);
	}

	public List<News> findNewsList() {
		return this.newsMapper.selectNewsList();
	}
}