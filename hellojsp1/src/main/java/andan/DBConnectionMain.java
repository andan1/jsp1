package andan;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBConnectionMain {
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "test";
	String pw = "1234";

	public static void main(String[] args) {
		try {
			// 1. 드라이버 로딩
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         // 2. 커넥션 생성
	         Connection con = 
	               DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
	                    "test", "1234");
	         
	         
	         // 3. 쿼리 문장 준비
	         String sql = "select sysdate from dual";
	         
	         // 4. 쿼리 문장 실행
	         Statement stmt = con.createStatement();
	         ResultSet rs = stmt.executeQuery(sql);
	         rs.next();
	         // 숫자를 입력시 1부터 
	         // 숫자 또는 결과 집합의 컬럼명
	         System.out.println(rs.getString("sysdate"));
	         
	         
	         // System.out.println(con);

		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩실패 - 라이브러리가 등록되었는지 확인해주세요");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Connection 객체 생성 실패");
			e.printStackTrace();
		}
	}
}
