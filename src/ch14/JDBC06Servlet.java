package ch14;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JDBC06Servlet
 */
@WebServlet("/JDBC06Servlet")
public class JDBC06Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC06Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> list = executeJDBC();
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<ul>");
		
		for (String city : list) {
			out.print("<li>");
			out.print(city);
			out.print("</li>");
		}
		out.print("</ul>");
	
	}
	
	private List<String> executeJDBC() {
		
		List<String> cities = new ArrayList<>();
		String sql = "Select distinct city from Customers order by City";
		
		String url="jdbc:mysql://52.79.189.42/test";
		String user="root";
		String password="wnddkdwjdqhcjfl1";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			//클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			//연결
			con = DriverManager.getConnection(url, user, password);
			//statement 생성
			stmt = con.createStatement();
			//query실행과 결과를 ResultSet으로 받는다.
			rs = stmt.executeQuery(sql);
			// 결과 탐색
			while (rs.next()) {
				String city = rs.getString(1);
				cities.add(city);
//				System.out.println(city);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (con !=null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return cities;
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
