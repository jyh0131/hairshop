package kr.yi.hairshop.dao;

import java.util.List;
import java.util.Map;

import kr.yi.hairshop.dto.Guest;

public interface GuestMapper {
	public List<Guest> selectGuestByAll();
	public List<Guest> selectGuestByAll2(int gNo);
	public List<Guest> selectGuestBygName(String gName);
	public Guest selectGuestByNo(int gNo);
	public Guest selectGuestByGNameGTel(Map<String, String> map);
	public int insertGuest(Guest guest);
	public int updateGuest2(Guest guest);
	public int deleteGuest(Guest guest);
	public int insertGuestByWorkMain(Guest guest);
	public int updateGuest(Guest guest);
	/*web project 용*/
	public Guest selectById(String id);
	public int insertByNaver(Guest guest);

}
