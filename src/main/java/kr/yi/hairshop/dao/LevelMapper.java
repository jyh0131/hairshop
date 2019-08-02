package kr.yi.hairshop.dao;

import java.util.List;
import java.util.Map;

import kr.yi.hairshop.dto.Level;


public interface LevelMapper {
	public List<Level> selectLevelByAll();
	public int insertLevel(Level level);
	public int updateLevel(Map<String, Object> map);
	public void deleteLevel(String name);
}
