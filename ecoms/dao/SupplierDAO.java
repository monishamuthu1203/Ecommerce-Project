package shan.ecoms.dao;


import java.util.List;


import shan.ecoms.model.Supplier;
public interface SupplierDAO {

	public void addSupplier(Supplier supplier);
	List<Supplier> supplierlist();
	void deletesupplier(String supid);
	Supplier getsupid(String supid);
	void editsupplier(Supplier supplier);
	
	
	
}

	



