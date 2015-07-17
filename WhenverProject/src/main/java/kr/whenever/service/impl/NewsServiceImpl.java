package kr.whenever.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.whenever.domain.News;
import kr.whenever.repo.NewsRepository;
import kr.whenever.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService{
	
	@Autowired
	private NewsRepository newsRepository;
	
	@Override
	public void registerNews(News news) {
		this.newsRepository.registerNews(news);
	}

	@Override
	public void modifyNews(News news) {
		this.newsRepository.modifyNews(news);
	}

	@Override
	public void removeNews(int id) {
		this.newsRepository.removeNews(id);
	}

	@Override
	public News findNews(int id) {
		return this.newsRepository.findNews(id);
	}

	@Override
	public List<News> findNewsList() {
		return this.newsRepository.findNewsList();
	}

}
