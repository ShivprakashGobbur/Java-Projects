package com.jsp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class UpdateEmployeeServlet extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		int employeeId=Integer.parseInt(req.getParameter("employeeId"));
		String employeeName=req.getParameter("employeeName");
		String employeeEmail=req.getParameter("employeeEmail");
		int employeeSalary=Integer.parseInt(req.getParameter("employeeSalary"));
		
		//JDBC LOGIC
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_employeedb","root","Shiv@8350");
			
			PreparedStatement pst=conn.prepareStatement("UPDATE employeedb SET employeesalary=? WHERE employeeid=?");
			pst.setInt(2, employeeId);
//			pst.setString(2,employeeName);
//			pst.setString(3,employeeEmail);
			pst.setInt(1, employeeSalary);
			
			int rowsUpdated=pst.executeUpdate();
			
			PrintWriter pw = res.getWriter();
			if(rowsUpdated>0) {
				pw.print("<h1>"+rowsUpdated+" rows Updated"+"</h1>");
		} 
			else {
				pw.print("<h1> Rows not updated </h1>");
			}
		}
		catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} 
		finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}

}

