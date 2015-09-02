package kr.whenever.controller;

import java.util.List;

import kr.whenever.domain.News;
import kr.whenever.repo.mapper.NewsMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/news")
public class NewsController {
	
	@Autowired
	private NewsMapper newsMapper;

	/**
	 * 뉴스 목록
	 * @return
	 */
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ModelAndView newsList(){
		//
		List<News> news = this.newsMapper.selectNewsList();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/news/newsList");
		mav.addObject("news", news);
		return mav;
	}
	
	/**
	 * 뉴스 등록 화면
	 * @return
	 */
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView registerNewsForm(){
		//
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/news/newsRegist");
		return mav;
	}
	
	/**
	 * 뉴스 등록
	 * @param news
	 * @return
	 */
	@RequestMapping(method = RequestMethod.POST)
	public ModelAndView registNews(
			News news
			){
		//
		this.newsMapper.insertNews(news);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/news/list");
		return mav;
	}
	
	/**
	 * 뉴스 수정 화면
	 * @param news
	 * @return
	 */
	@RequestMapping(value = "/{id}/modify", method = RequestMethod.GET)
	public ModelAndView modifyNewsForm(
			@PathVariable(value = "id") int id
			){
		//
		News news = this.newsMapper.selectNews(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/news/newsModify");
		mav.addObject("news", news);
		return mav;
	}
	
	/**
	 * 뉴스 수정
	 * @param id
	 * @param news
	 * @return
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.POST)
	public ModelAndView modifyNews(
			@PathVariable(value = "id") int id,
			News news
			){
		//
		this.newsMapper.updateNews(news);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/news/list");
		return mav;
	}
	
	/**
	 * 뉴스 삭제
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/{id}/remove", method = RequestMethod.POST)
	public ModelAndView removeNews(
			@PathVariable("id") int id
			){
		//
		this.newsMapper.deleteNews(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/news/list");
		return mav ;
	}
	
	/**
	 * 뉴스 조회
	 * @return
	 */
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView showNews(
			@PathVariable("id") int id
			){
		//
		News news = this.newsMapper.selectNews(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/news/newsView");
		mav.addObject("news", news);
		return mav;
	}
}