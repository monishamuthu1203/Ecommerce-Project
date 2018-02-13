package shan.ecoms.dao;

import java.util.List;

import shan.ecoms.model.Category;
public interface CategoryDAO {

	public void addCategory(Category category);
	List<Category> categorylist();
	void deletecategory(String catid);
	Category getcatid(String catid);
	void editcategory(Category category);
}
	

	
	
	


