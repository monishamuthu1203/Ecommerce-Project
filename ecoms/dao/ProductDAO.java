package shan.ecoms.dao;
import java.util.List;
import shan.ecoms.model.Product;
public interface ProductDAO {

	public void addProduct(Product product);
	List<Product> productlist();
	void deleteproduct(int productid);
	 Product getproductid(int productid); 
	void editproduct(Product product);
}
	



