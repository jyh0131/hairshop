package kr.yi.hairshop.dao;

import kr.yi.hairshop.dto.Snsinfo;

public interface SnsinfoMapper {

	public Snsinfo selectById(String id); //로그인시 불러서 비교 할때
	
	public int insertSnsinfo(Snsinfo snsinfo);
	public int deleteSnsinfo(String id);
}
