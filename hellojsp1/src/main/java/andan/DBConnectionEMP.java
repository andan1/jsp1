package andan;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnectionEMP {
	
	public static void main(String[] args) {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "test";
		String pw = "1234";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			// 1. 드라이버 로딩
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         // 2. 커넥션 생성
	         con = DriverManager.getConnection(url, id, pw);
	         
	         // 3. 쿼리 문장 준비
	         String sql = "select emp_id, emp_name, emp_no from employee";
	         
	         // 4. 쿼리 문장 실행
	         stmt = con.createStatement();
	         
	         // select 문장을 실행할 경우 ResultSet을 반환
	         rs = stmt.executeQuery(sql);
	         // update, insert, delete의 경우 int 타입을 반환
	         rs.next();
	         // 숫자를 입력시 1부터 
	         // 숫자 또는 결과 집합의 컬럼명
	         System.out.println(rs.getString(1));
	         System.out.println(rs.getString(2));
	         System.out.println(rs.getString(3));
	         System.out.println(rs.getString("emp_id"));
	         System.out.println(rs.getString("emp_name"));
	         System.out.println(rs.getString("emp_no"));
	         
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩실패 - 라이브러리가 등록되었는지 확인해주세요");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Connection 객체 생성 실패");
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (stmt != null) stmt.close();
				if (con != null) con.close();
			} catch (Exception e) {
				System.out.println("자원 해체 중 예외사항이 발생");
			}
		}
	}
}
