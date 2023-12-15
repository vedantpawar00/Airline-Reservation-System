package com.airline;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
		String email=request.getParameter("email");
		String psd = request.getParameter("psd");
		Connection con = BConnection.connect();
		try {
			PreparedStatement pstmt = con.prepareStatement("select  *  from customer where email =? and password=?");
			pstmt.setString(1, email);
			pstmt.setString(2, psd);
			ResultSet rs = pstmt.executeQuery();
			
			
			if(rs.next())
			{
			
			
				response.sendRedirect("dashboard1.jsp");
			}
			else
			{
				response.sendRedirect("Fail.html");
			}
			PreparedStatement pstmt1 = con.prepareStatement("select  id  from customer where email =? and password=?");
			pstmt1.setString(1, email);
			pstmt1.setString(2, psd);
			ResultSet rs1 = pstmt.executeQuery();
			while(rs1.next())
			{
				Values.setCid(rs1.getInt(1));
				System.out.println(rs1.getInt(1));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
