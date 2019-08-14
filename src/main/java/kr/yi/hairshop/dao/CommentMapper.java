package kr.yi.hairshop.dao;

import java.sql.SQLException;
import java.util.List;

import kr.yi.hairshop.dto.Comment;

public interface CommentMapper {
	
	public List<Comment> selectComment(int rNo);
	public void deleteComment(int cNo) throws SQLException;
	public void updateComment(Comment comment) throws SQLException;
	public void insertComment(Comment comment) throws SQLException;
	
	public List<Comment> selectAll() throws SQLException;
	public List<Comment> selectAllByrNo(int rNo) throws SQLException;
	
}