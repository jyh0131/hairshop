package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import kr.yi.hairshop.dto.Review;

public interface ReviewMapper {
	public List<Review> selectReview();
	public void insertReview(Review review) throws SQLException;
	public void deleteReview(int rNo) throws SQLException;
	public Review selectListByNo(int rNo) throws SQLException;
	public void updateReview(Review review) throws SQLException;

}