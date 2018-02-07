package cn.itcast.DB;

import java.util.LinkedHashMap;
import java.util.Map;

import cn.itcast.domain.Book;

public class DB {
	private static Map map=new LinkedHashMap();
	static{
		map.put("1", new Book("1","javaweb开发","AA",38,"一本好书"));
		map.put("2", new Book("2","jdbc开发","BB",28,"一本好书"));
		map.put("3", new Book("3","ajax开发","CC",48,"一本好书"));
		map.put("4", new Book("4","sprint开发","DD",58,"一本好书"));
	}
	
	public static Map getAll(){
		return map;
	}
}
