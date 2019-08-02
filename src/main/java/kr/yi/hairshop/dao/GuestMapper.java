package kr.yi.hairshop.dao;

import java.util.List;

import kr.yi.hairshop.dto.Guest;

public interface GuestMapper {
	public List<Guest> selectGuestByAll();
	public List<Guest> selectGuestBygName(String gName);
	public int insertGuest(Guest guest);
	public int updateGuest(Guest guest);
	public void deleteGuest(int getgNo);
	public int insertGuestByWorkMain(Guest guest);
}
