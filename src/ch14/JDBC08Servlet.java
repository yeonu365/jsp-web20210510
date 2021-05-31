package ch14;

import java.io.IOException;
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
 * Servlet implementation class JDBC08Servlet
 */
@WebServlet("/JDBC08Servlet")
public class JDBC08Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC08Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = executeJDBC();
			
		request.setAttribute("name", name);
		String path="/ch14/jdbc08.jsp";
		request.getRequestDispatcher(path).forward(request,response);
		
	}

private String executeJDBC() {
	
	String name="";
	
	String sql = "Select CustomerName from Customers WHERE CustomerID=1";
	
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
		if (rs.next()) {
			name = rs.getString(1);
//			cities.add(city);
			
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
	return name;
}

	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
