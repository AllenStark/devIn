package hstc.bsol.tool;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//操作数据的工具类
public class DbUtil {

	private static Connection conn; 
	private static PreparedStatement pstm;
	private static ResultSet rs;
	
	//插入、更新、删除
	public static boolean executeUpdate(String sql,Object[] obj) {
		conn = C3P0Util.getConnection();
		int count = 0;
		try {
			pstm = conn.prepareStatement(sql);
			for(int k = 0; k < obj.length; k++) {
				pstm.setObject(k+1,obj[k]);
			}
			count = pstm.executeUpdate();	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			C3P0Util.release(conn, pstm, rs);
		}
		if(count > 0) {
			return true;
		}else {
			return false;
		}
	}
	
	//查询
	 public static<T> List<T> getBeanClassQuery (Class<T> classBean, String sql, Object...obj){
		  T objectT = null;
		  conn = C3P0Util.getConnection();
		  ArrayList<T> list=null;
		  try {
		    pstm = conn.prepareStatement(sql);
			for (int k = 0; k < obj.length; k++) {
				pstm.setObject(k+1, obj[k]);
			}
			rs = pstm.executeQuery();			
			ResultSetMetaData rsMetaData = rs.getMetaData();
			HashMap<String, Object> map = new HashMap<>();			
			list = new ArrayList<>();		
			while(rs.next()){
				map.clear();
				for (int x = 0; x < rsMetaData.getColumnCount(); x++) {				
					String columnName = rsMetaData.getColumnLabel(x+1);
					Object objValue = rs.getObject(columnName);
					map.put(columnName, objValue);
				}				 		
				if(map.size()>0){
					try {
						objectT = classBean.newInstance();
					} catch (InstantiationException e) {
						e.printStackTrace();
					}
					for (Map.Entry<String, Object> entryObj : map.entrySet()) {
						String key = entryObj.getKey();
						Object object = entryObj.getValue();				
						BeanUtils.setProperty(objectT, key, object);
					}
					 list.add(objectT); 
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} finally {
			C3P0Util.release(conn, pstm, rs);
		}
		  return list;  
	  } 
}