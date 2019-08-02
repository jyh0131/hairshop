package kr.yi.hairshop.dao;

import java.util.List;

import kr.yi.hairshop.dto.Event;

public interface EventMapper {

	public List<Event> selectEventByAll();
	
	public Event selectByName(String name);
	public int insert(Event event);
	public int deleteByName(String name);
	public int updateByName(Event event);
	
	
}
