package kr.yi.hairshop.dao;

import java.util.List;
import java.util.Map;

import kr.yi.hairshop.dto.Designer;

public interface DesignerMapper {
	public List<Designer> selectDesignerByAll();
	public List<Designer> selectDesignerByNo(int dNo);
	
	public Designer selelctDesignerById(String id); // 로그인
	public int selectMinNo();
	public Designer selectByNameAndGrade(Map<String, String> map); // 로그인
	
	public int insertDesigner(Designer ds);
	public int deleteDesigner(int dNo);
	public int updateDesigner(Designer ds);
	List<Designer> selectDesignerByMgn();

}