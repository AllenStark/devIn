package hstc.bsol.tool;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

//C3P0连接池的工具类
public class C3P0Util {
	
	//数据源
	private static ComboPooledDataSource dataSource = new ComboPooledDataSource();
	
	public static ComboPooledDataSource getDataSource() {
		return dataSource;
	}

	//从连接池中获取一个连接
	public static Connection getConnection() {
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException("连接数据库出错");
		}
	}
   
	//断开连接，释放资源
	public static void release(Connection conn,Statement stmt,ResultSet rs) {
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			rs = null;
		}
		if(stmt!=null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			stmt=null;
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			conn = null;
		}
	}

}
