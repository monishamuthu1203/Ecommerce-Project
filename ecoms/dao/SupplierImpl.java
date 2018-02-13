package shan.ecoms.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shan.ecoms.model.Category;
import shan.ecoms.model.Supplier;
@Repository
public class SupplierImpl implements SupplierDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	
@Transactional
	
	public void addSupplier(Supplier supplier) 
	{
		try
		{
		Session session=sessionFactory.openSession();
		Transaction trans=session.beginTransaction();
		session.save(supplier);
		trans.commit();
		session.flush();
		session.close();
		
		}
		catch(Exception ex)
		{
		System.out.println("Error="+ex);
		}
	}
public List<Supplier> supplierlist() {
	
	Session session = sessionFactory.openSession();
	List<Supplier> supplier = session.createCriteria(Supplier.class).list();
	System.out.println("----- List of Suppliers-----");
	System.out.println(supplier);
	session.flush();
	session.close();
	return supplier;
}
public void deletesupplier(String supid) {
	Session session = sessionFactory.openSession();
	Supplier supplier = (Supplier) session.get(Supplier.class, supid);
	session.delete(supplier);
	session.flush();
	session.close();
}
public Supplier getsupid(String supid) {

    Session session = sessionFactory.openSession();
	Supplier  supplier  = (Supplier ) session.get(Supplier .class, supid);
	session.close();
	return supplier ;
}

public void editsupplier (Supplier  supplier ) {
	Session session = sessionFactory.openSession();
	session.update(supplier );
	session.flush();
	session.close();
}

}