package com.shop.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.shop.common.JDBCConnection;
import com.shop.common.MemberVO;

public class MemberDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	int cnt = 0;
	String sql = "";
	
	public ArrayList<MemberVO> getMemberList() {
		ArrayList<MemberVO> list = null;
		try {
			conn = JDBCConnection.getConnection();
			sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			list = new ArrayList<MemberVO>();
			while(rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setUserid(rs.getString("userid"));
				vo.setUserpw(rs.getString("userpw"));
				vo.setEmail(rs.getString("email"));
				vo.setTel(rs.getString("tel"));
				vo.setAddr(rs.getString("addr"));
				vo.setRegdate(rs.getDate("regdate"));
				vo.setBirth(rs.getDate("birth"));
				vo.setUserpoint(rs.getInt("userpoint"));
				vo.setVisited(rs.getInt("visited"));
			}
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
			e.printStackTrace();
		} catch(SQLException e) {
			System.out.println("SQL구문 처리 실패");
			e.printStackTrace();
		} catch(Exception e) {
			System.out.println("잘못된 요청으로 업무 처리 불가");
			e.printStackTrace();
		} finally {
			JDBCConnection.close(rs, pstmt, conn);
		}
		return list;
	}
}
