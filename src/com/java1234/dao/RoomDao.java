package com.java1234.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.java1234.model.PageBean;
import com.java1234.model.Room;
import com.java1234.util.StringUtil;

public class RoomDao {

	public ResultSet gradeList(Connection con,PageBean pageBean,Room grade)throws Exception{
		StringBuffer sb=new StringBuffer("select * from t_room");
		if(grade != null && StringUtil.isNotEmpty(grade.getGradeName())){
			sb.append(" and gradeName like '%"+grade.getGradeName()+"%'");
		}
		if(grade != null && StringUtil.isNotEmpty(grade.getGradeDesc())){
			sb.append(" and gradeDesc like '%"+grade.getGradeDesc()+"%'");
		}
		if(pageBean!=null){
			sb.append(" limit "+pageBean.getStart()+","+pageBean.getRows());
		}
		PreparedStatement pstmt=con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		return pstmt.executeQuery();
	}
	
	public int gradeCount(Connection con,Room grade)throws Exception{
		StringBuffer sb=new StringBuffer("select count(*) as total from t_room");
		if(StringUtil.isNotEmpty(grade.getGradeName())){
			sb.append(" and gradeName like '%"+grade.getGradeName()+"%'");
		}
		PreparedStatement pstmt=con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			return rs.getInt("total");
		}else{
			return 0;
		}
	}
	
	/**
	 * delete from tableName where field in (1,3,5)
	 * @param con
	 * @param delIds
	 * @return
	 * @throws Exception
	 */
	public int gradeDelete(Connection con,String delIds)throws Exception{
		String sql="delete from t_room where id in("+delIds+")";
		PreparedStatement pstmt=con.prepareStatement(sql);
		return pstmt.executeUpdate();
	}
	
	public int gradeAdd(Connection con,Room grade)throws Exception{
		String sql="insert into t_room values(null,?,?)";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, grade.getGradeName());
		pstmt.setString(2, grade.getGradeDesc());
		return pstmt.executeUpdate();
	}
	
	public int gradeModify(Connection con,Room grade)throws Exception{
		String sql="update t_room set gradeName=?,gradeDesc=? where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, grade.getGradeName());
		pstmt.setString(2, grade.getGradeDesc());
		pstmt.setInt(3, grade.getId());
		return pstmt.executeUpdate();
	}
	
	public int roomModify(Connection con,int i)throws Exception{
		String sql="update t_room set gradeDesc='Âú' where gradeName=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, i);
		return pstmt.executeUpdate();
	}
	
}
