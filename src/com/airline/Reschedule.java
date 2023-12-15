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
 * Servlet implementation class Reschedule
 */
@WebServlet("/Reschedule")
public class Reschedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Reschedule() {
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
		int rid=Values.getRid();
		//String seats = request.getParameter("time");
		String class2 = request.getParameter("class2");
		Connection con = BConnection.connect();
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement("update book set class1=? where fid=?");
			pstmt.setInt(2, rid);
		//	pstmt.setString(2, seats);
			pstmt.setString(1, class2);
			
		
			
			int i =pstmt.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("hradded.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
