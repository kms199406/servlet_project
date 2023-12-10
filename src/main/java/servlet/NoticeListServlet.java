package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serv.Notice;

/**
 * Servlet implementation class NoticeListServlet
 */
@WebServlet("/noticeList.do")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String select="select no,title,content,to_char(entry_date,'YY/MM/DD') "
				+ " from phoneotice_tbl";
		ArrayList<Notice> list = new ArrayList<Notice>();
		Connection con=null; Statement stmt=null; ResultSet rs =null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(
				"jdbc:oracle:thin:@//localhost:1521/xe","hr","hr");
			stmt = con.createStatement();
			rs = stmt.executeQuery(select);//select 실행
			while(rs.next()) {
				Notice n = new Notice();//DTO 생성
				n.setNo(rs.getInt(1));//글번호
				n.setTitle(rs.getString(2));//제목
				n.setContent(rs.getString(3));//내용
				n.setEntry_date(rs.getString(4));//등록일
				list.add(n);//DTO를 ArrayList에 저장
			}
		}catch(Exception e) {
			System.out.println("공지사항 목록 조회 중 문제발생!");
		}finally {
			try {
				rs.close(); stmt.close(); con.close();
			}catch(Exception e) {}
		}
		request.setAttribute("LIST", list);
		int totalCount = getNoticeTotalCount();
		int pageCount = totalCount / 5;
		if(totalCount % 5 != 0) pageCount++;
		request.setAttribute("PAGES", pageCount);
		RequestDispatcher rd = request.getRequestDispatcher("noticeList.jsp");
		rd.forward(request, response);
	}
	protected int getNoticeTotalCount() {
		String select = "select count(*) from hrdnotice_tbl";
		int count = 0; Connection con=null; Statement stmt=null;
		ResultSet rs = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con = DriverManager.getConnection(
				"jdbc:oracle:thin:@//localhost:1521/xe","hr","hr");
			stmt = con.createStatement();
			rs = stmt.executeQuery(select);//select 실행
			if(rs.next()) count = rs.getInt(1);
		}catch(Exception e) {
			System.out.println("총 공지사항 수 검색 중 문제발생!");
		}finally {
			try {
				rs.close(); stmt.close(); con.close();
			}catch(Exception e) {}
		}
		return count;
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}







