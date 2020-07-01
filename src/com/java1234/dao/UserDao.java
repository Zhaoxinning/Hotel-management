package com.java1234.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.java1234.model.Student;
import com.java1234.model.User;
import com.java1234.util.DateUtil;
import com.java1234.util.DbUtil;

@SuppressWarnings("unused")
public class UserDao {

	public User login(Connection con,User user) throws Exception{
		User resultUser=null;
		String sql="select * from t_user where userName=? and password=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, user.getUserName());
		pstmt.setString(2, user.getPassword());
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			resultUser=new User();
			resultUser.setUserName(rs.getString("userName"));
			resultUser.setPassword(rs.getString("password"));
		}
		return resultUser;
	}
	public boolean insert(Connection connection,User user) {
		PreparedStatement pstmt = null;
		Statement st=null;
		try {
			String sql="insert into t_user values (?,?,?)";
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