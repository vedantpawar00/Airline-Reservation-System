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
 * Servlet implementation class AddFlight
 */
@WebServlet("/AddFlight")
public class AddFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFlight() {
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
		
		int fid=0;
		String fname = request.getParameter("fname");
		String deparature = request.getParameter("deparature");
		String arrival = request.getParameter("arrival");
		String time = request.getParameter("time");
		int bprice = Integer.parseInt(request.getParameter("bprice"));
		int eprice = Integer.parseInt(request.getParameter("eprice"));
		int fprice = Integer.parseInt(request.getParameter("fprice"));
		Connection con = BConnection.connect();
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement("insert into flight values(?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, fid);
			pstmt.setString(2, fname);
			pstmt.setString(3,deparature);
			pstmt.setString(4, arrival);
			pstmt.setString(5, time);
			pstmt.setInt(6, bprice);
			pstmt.setInt(7, eprice);
			pstmt.setInt(8, fprice);
			int i =pstmt.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("dashboard.jsp");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
