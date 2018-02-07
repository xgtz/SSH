package cn.itcast.service;

import java.util.Map;

import cn.itcast.dao.BookDao;
import cn.itcast.domain.Book;

public class BusinessService {
	
	private BookDao dao=new BookDao(); 
	
	public Map getAllBook()
	{
		return dao.getAll();
	}
	
	public Book findBook(String id)
	{
		return dao.find(id);
	}
}
