package com.mvc.notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.mvc.common.util.DBUtil.getConnection;

import com.mvc.notice.vo.NoticeVO;

public class NoticeDAO {
	private static NoticeDAO instance =null;
	
	public static NoticeDAO getInstance() { 
		if(instance==null) {
			instance= new NoticeDAO();
		}
		return instance;
	}
	
	private NoticeDAO() {} // 다른 클래스 new BoardDAO(); X
	
	private NoticeVO addNotice(ResultSet rs) throws SQLException{
		NoticeVO noticeVO = new NoticeVO();
		noticeVO.setNotice_no(rs.getInt("notice_no"));
		noticeVO.setTitle(rs.getString("title"));
		noticeVO.setContent(rs.getString("content"));
		noticeVO.setWriter(rs.getString("writer"));
		noticeVO.setWriteday(rs.getString("writeday"));
		noticeVO.setView_count(rs.getInt("view_count"));
		noticeVO.setIs_important(rs.getString("is_important"));
		
		return noticeVO;
	}
	
	public List<NoticeVO> NoticeList(){
		List<NoticeVO> list = new ArrayList<>();
		
		StringBuilder query = new StringBuilder();
		query.append("SELECT notice_no, title, writer, ");
		query.append("TO_CHAR(writeday,'YYYY-MM-DD') AS writeday, view_count ");
		query.append("FROM notice ORDER BY notice_no DESC");
		
		try(Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(query.toString());
			ResultSet rs = pstmt.executeQuery()){
			
			while(rs.next()) {
				list.add(addNotice(rs));
			}
		} catch(SQLException e) {
			System.err.println("[noticeList] 오류: " + e.getMessage());
		}
			return list;
	}
}
  