package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.News;
import kr.whenever.repo.mapper.NewsMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/ws/news")
public class WSNewsController {
	
	@Autowired
	private NewsMapper newsMapper;

	@RequestMapping(method = RequestMethod.GET)
	public @ResponseBody List<News> newsListData(){
		List<News> news = this.newsMapper.selectNewsList();
		return news;
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public @ResponseBody News newsData(
			@PathVariable(value = "id") int id
			){
		News news = this.newsMapper.selectNews(id);
		return news;
	}
}