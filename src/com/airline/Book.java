package com.airline;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Book
 */
@WebServlet("/Book")
public class Book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Book() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//int fid=Integer.parseInt(request.getParameter("fid"));
		int fid=Values.getFid();
		String seats = request.getParameter("seats");
		String class1 = request.getParameter("class1");
		int cid=Values.getCid();
	//	System.out.println(Values.getTime());
	//	String time=Values.getTime();
		Connection con = BConnection.connect();
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement("insert into book values(?,?,?,?)");
			pstmt.setInt(1, fid);
			pstmt.setString(2, seats);
			pstmt.setString(3, class1);
			pstmt.setInt(4, cid);
			
			
			int i =pstmt.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("dashboard1.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
