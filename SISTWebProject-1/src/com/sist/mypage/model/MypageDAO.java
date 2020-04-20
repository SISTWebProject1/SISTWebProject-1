package com.sist.mypage.model;


import java.io.Reader;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.sist.detail.dao.DetailReviewVO;
import com.sist.detail.dao.Detail_Review_PhotoVO;

public class MypageDAO {

	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex){
			System.out.println("");
			ex.printStackTrace();
		}
		
	}

	
	public static MemberVO_u PassWord_check(String id){
		SqlSession session =null;
		MemberVO_u vo = new MemberVO_u();
		try{
			session = ssf.openSession();
			System.out.println("11"+id);
			vo = session.selectOne("passwordCheck",id);
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
	public static void Update_ok(MemberVO_u vo){
		SqlSession session = null;
		try{
			session = ssf.openSession(true);
			session.update("update_profile",vo);
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if(session!=null)
				session.close();
		}
		
	}
	public static List<ReviewVO_u> ReviewData(String id){
		SqlSession session =null;
		List<ReviewVO_u> list = new ArrayList<ReviewVO_u>();
		try{
			session = ssf.openSession();
			list = session.selectList("reivewData",id);
		}catch(Exception ex){
			ex.getMessage();
			ex.printStackTrace();
		}finally{
			if(session!=null)
				session.close();
		}
		return list;
	}
	public static int ReviewCount(String id){
		SqlSession session =null;
		int count = 0;
		try{
			session = ssf.openSession();
			count = session.selectOne("reviewCount",id);
		}catch(Exception ex){
			ex.getMessage();
			ex.printStackTrace();
		}finally{
			if(session!=null)
				session.close();
		}
		return count;
	}
	public static List<WishListVO_u> wishlistData(String id){
		SqlSession session =null;
		List<WishListVO_u> list = new ArrayList<WishListVO_u>();
		try{
			session = ssf.openSession();
			list = session.selectList("wishtList",id);
		}catch(Exception ex){
			ex.getMessage();
			ex.printStackTrace();
		}finally{
			if(session!=null)
				session.close();
		}
		return list;
	}
	
	
	
	public static List<ReviewVO_u> getReviewData(Map map){
		List<ReviewVO_u> list = new ArrayList<ReviewVO_u>();
		SqlSession session = null;
		
		try {
			session = ssf.openSession();
			list = session.selectList("getReviewData",map);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}finally{
			if(session!=null)
				session.close();
		}
		return list;
	}
	//리뷰별 이미지 출력
	public static List<PhotoVO_u> getImageForReview(int[] reviewNo){
		List<PhotoVO_u> list = new ArrayList<PhotoVO_u>();
		SqlSession session=null;
		try {
			session = ssf.openSession();
			list = session.selectList("getImagesForReview",reviewNo);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}finally{
			if(session!=null)
				session.close();
		}
		return list;
		
		
	}
}
