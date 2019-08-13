package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import kr.yi.hairshop.dto.Comment;

public interface CommentMapper {
	
	public List<Comment> selectComment(int rNo);
	public void deleteComment(int rNo) throws SQLException;
//	public void updateReview(Review review) throws SQLException;
	public void insertComment(Comment comment) throws SQLException;
}