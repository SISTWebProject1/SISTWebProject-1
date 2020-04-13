package com.sist.reservation.model;

import java.io.Reader;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class ReservationDAO {

	private static SqlSessionFactory ssf;
	static
	{
		try{
			//XML
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
			
		}catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}

	//������ ��������� ���� �Ѱ�
	public static ReservationVO reservationListData(int no)
	{
		ReservationVO vo=new ReservationVO();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			vo=session.selectOne("reservationListData",no);
		
		} catch(Exception e)
		{
			System.out.println("reservation:������Ȳ "+e.getMessage());
		}finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}

}
