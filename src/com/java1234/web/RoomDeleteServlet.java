package com.java1234.web;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.java1234.dao.RoomDao;
import com.java1234.dao.OrderDao;
import com.java1234.util.DbUtil;
import com.java1234.util.ResponseUtil;

@SuppressWarnings("serial")
public class RoomDeleteServlet extends HttpServlet{
	DbUtil dbUtil=new DbUtil();
	RoomDao gradeDao=new RoomDao();
	OrderDao studentDao=new OrderDao();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String delIds=request.getParameter("delIds");
		Connection con=null;
		try{
			con=dbUtil.getCon();
			JSONObject result=new JSONObject();
			String str[]=delIds.split(",");
			for(int i=0;i<str.length;i++){
				boolean f=studentDao.getStudentByGradeId(con, str[i]);
				if(f){
					result.put("errorIndex", i);
					result.put("errorMsg", "�������п��ˣ�����ɾ��");
					ResponseUtil.write(response, result);
					return;
				}
			}
			int delNums=gradeDao.gradeDelete(con, delIds);
			if(delNums>0){
				result.put("success", "true");
				result.put("delNums", delNums);
			}else{
				result.put("errorMsg", "ɾ��ʧ��");
			}
			ResponseUtil.write(response, result);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}	
}