package shan.ecoms.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shan.ecoms.model.Category;
@Repository
public class CategoryImpl implements CategoryDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	
@Transactional
	
	public void addCategory(Category category) 
	{
		try
		{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(category);
		trans.commit();
		session.flush();
		session.close();
		
		}
		catch(Exception ex)
		{
		System.out.println("Error="+ex);
		}
	}
public List<Category> categorylist() {
	Session session = sessionFactory.openSession();
	List<Category> category = session.createCriteria(Category.class).list();
	System.out.println("----- List of Categories-----");
	System.out.println(category);
	session.flush();
	session.close();
	return category;
}
public void deletecategory(String catid) {
	Session session = sessionFactory.openSession();
	Category category = (Category) session.get(Category.class, catid);
	session.delete(category);
	session.flush();
	session.close();
}
public Category getcatid(String catid) {

	
	Session session = sessionFactory.openSession();
	Category category = (Category) session.get(Category.class, catid);
	session.close();
	return category;
}

public void editcategory(Category category) {
	Session session = sessionFactory.openSession();
	session.update(category);
	session.flush();
	session.close();
}



}

