package com.java1234.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.java1234.model.Student;
import com.java1234.model.rootUser;
import com.java1234.util.DateUtil;
import com.java1234.util.DbUtil;

@SuppressWarnings("unused")
public class rootUserDao {
	public rootUser login(Connection con,rootUser user) throws Exception{
		rootUser resultUser=null;
		String sql="select * from t_rootuser where userName=? and password=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, user.getUserName());
		pstmt.setString(2, user.getPassword());
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			resultUser=new rootUser();
			resultUser.setUserName(rs.getString("userName"));
			resultUser.setPassword(rs.getString("password"));
		}
		return resultUser;
	}
	public static boolean insert(Connection connection,rootUser user) {
		PreparedStatement pstmt = null;
		Statement st=null;
		try {
			String sql="insert into t_rootuser(userName,password,telephone) values (?,?,?)";
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1,user.getUserName());
			pstmt.setString(2,user.getPassword());
			pstmt.setString(3,user.gettelephone());
			return pstmt.executeUpdate()>0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}