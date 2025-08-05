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
		noticeVO.setWriter(rs.getString("writer"));
		noticeVO.setWriteday(rs.getString("writeday"));
		noticeVO.setView_count(rs.getInt("view_count"));
		
		return noticeVO;
	}
	
	public List<NoticeVO> NoticeList(){
		List<NoticeVO> list = new ArrayList<>();
		
		StringBuilder query = new StringBuilder();
		query.append("SELECT notice_no, title, writer, ");
		query.append("TO_CHAR(writeday,'YYYY-MM-DD') AS writeday, view_count, is_important ");
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

	
	public int insert(NoticeVO noticeVO) {
		StringBuilder query = new StringBuilder();
    	query.append("INSERT INTO notice(notice_no, writer, title, content, is_important) ");
    	query.append("VALUES(notice_seq.nextval, ?, ?, ?,?)");
        
        int result = 0;

        try (Connection conn = getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query.toString())) { // 주석 부분을 해제하고 사용한다면 query.toString() -> query로 변경.

            pstmt.setString(1, noticeVO.getWriter());
            pstmt.setString(2, noticeVO.getTitle());
            pstmt.setString(3, noticeVO.getContent());
            pstmt.setString(4, noticeVO.getIs_important());

            result = pstmt.executeUpdate();
        } catch (SQLException e) {
            System.err.println("[noticeInsert] SQL 오류: " + e.getMessage());
            //e.printStackTrace();  //오류 발생 시 주석 해제
        }
        return result;
    }

	public NoticeVO detail(NoticeVO noticeVO) {
		StringBuilder query = new StringBuilder();
		query.append("SELECT notice_no, writer, title, content, ");
		query.append("TO_CHAR(writeday,'YYYY-MM-DD HH24:MI:SS') writeday, view_count ");
		query.append("FROM notice WHERE notice_no=?");
		NoticeVO resultData = null;
		
		try (Connection conn = getConnection();
                PreparedStatement pstmt = conn.prepareStatement(query.toString())) {

			pstmt.setInt(1, noticeVO.getNotice_no());
			
			try(ResultSet rs = pstmt.executeQuery()){
				if(rs.next()) {
					resultData = addNotice(rs);
					resultData.setContent(rs.getString("content"));
				}
			}
		}catch(SQLException e) {
			 System.err.println("[detail] SQL 오류: " + e.getMessage());
		}
			return resultData;
	}
}
  