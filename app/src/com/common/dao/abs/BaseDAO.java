package com.common.dao.abs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.common.util.EmptyUtil;

public abstract class BaseDAO {
	
	private DataSource dataSource;
	
	public BaseDAO() {
		
		try {
			Context ctx=new InitialContext();
			dataSource=(DataSource) ctx.lookup("java:comp/env/jdbc/test");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	protected void queryBySQL(String sql) {
		
	}
	
	protected void insertBySQL(String sql) {
		
		Connection con=getConnection();
		PreparedStatement ps=getPreparedStatement(con, sql);
		
		try {
			ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closePreparedStatement(ps);
			closeConnection(con);
		}
	}
	
	protected void updateBySQL(String sql) {
		
	}
	
	protected void deleteBySQL(String sql) {
		
	}
	
	protected Connection getConnection() {
		
		Connection con=null;
		
		try {
			con=getDataSource().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	protected PreparedStatement getPreparedStatement(Connection con,String sql) {
		
		PreparedStatement ps=null;
		
		if(EmptyUtil.isEmpty(con)) {
			return ps;
		}
		
		try {
			ps=con.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
	}
	
	protected void closeResultSet(ResultSet rs) {
		
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			rs=null;
		}
		
	}
	
	private void closePreparedStatement(PreparedStatement ps) {
		if(ps!=null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			ps=null;
		}
	}
	
	private void closeConnection(Connection con) {
		if(con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			con=null;
		}
	}
	
	protected void closeAll(Connection con,PreparedStatement ps,ResultSet rs) {
		closeResultSet(rs);
		closePreparedStatement(ps);
		closeConnection(con);
	}
	
	public DataSource getDataSource() {
		return dataSource;
	}

}
