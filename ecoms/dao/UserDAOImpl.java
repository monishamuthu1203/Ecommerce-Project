package shan.ecoms.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shan.ecoms.model.Register;
@Repository
public class UserDAOImpl implements UserDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	

	
	public void addUser(Register user) 
	{
		try
		{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(user);
		trans.commit();
		session.flush();
		session.close();
		
		}
		catch(Exception ex)
		{
		System.out.println("Error="+ex);
		}
	}


}