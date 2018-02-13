package shan.ecoms.dao;




import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shan.ecoms.model.Category;
import shan.ecoms.model.Product;
@Repository
public class ProductImpl implements ProductDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	
@Transactional
	
	public void addProduct(Product product) 
	{
		try
		{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(product);
		trans.commit();
		session.flush();
		session.close();
		
		}
		catch(Exception ex)
		{
		System.out.println("Error="+ex);
		}
	}
public List<Product> productlist() {
	
	Session session = sessionFactory.openSession();
	List<Product> product = session.createCriteria(Product.class).list();
	System.out.println("----- List of Products----");
	System.out.println(product);
	session.flush();
	session.close();
	return product;
}
public void deleteproduct(int productid) {
	Session session = sessionFactory.openSession();
	Product product = (Product) session.get(Product.class, productid);
	session.delete(product);
	session.flush();
	session.close();
}
public Product getproductid(int productid) {

	
	Session session = sessionFactory.openSession();
	Product product = (Product) session.get(Product.class, productid);
	session.close();
	return product;
}

public void editproduct(Product product) {
	Session session = sessionFactory.openSession();
	session.update(product);
	session.flush();
	session.close();
}




}
