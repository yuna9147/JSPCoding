package com.books;

import static com.common.DBUtil.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.books.BooksVO;

@SuppressWarnings("unused")
public class BooksDAO {
		private static BooksDAO instance = null;

		public static BooksDAO getInstance() {
			if(instance==null) {
				instance = new BooksDAO();
			}
			return instance;
		}
		private BooksDAO() {}
		
	private BooksVO addBooks(ResultSet rs) throws SQLException{
		BooksVO booksVO = new BooksVO();
		booksVO.setBook_id(rs.getInt("book_id"));
		booksVO.setTitle(rs.getString("title"));
		booksVO.setPublisher(rs.getString("publisher"));
		booksVO.setYear(rs.getString("year"));
		booksVO.setPrice(rs.getInt("price"));
        return booksVO;
	}	
	public List<BooksVO> getAllBooks() {
		List<BooksVO> list = new ArrayList<>();
		String sql = "SELECT book_id, title, publisher, year, price FROM books ORDER BY book_id";
		
		try(Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()){
			
			while(rs.next()) {
				list.add(addBooks(rs));
			}
		} catch(SQLException e) {
			System.err.println("[getAllBooks] SQL 오류: "+e.getMessage());
		}
		return list;
	}
}
