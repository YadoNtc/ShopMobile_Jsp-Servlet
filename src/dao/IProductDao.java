package dao;

import java.util.List;

import model.ProductModel;
import paging.Pageble;

public interface IProductDao extends IGenericDao<ProductModel> {
	
	List<ProductModel> findAll();
	
	//ProductModel searchByName(String name);
	
	List<ProductModel> searchByName(String name);
	
	Long insertDao(ProductModel productModel);
	
	ProductModel findOne(Long id);
	
	void update(ProductModel updateProduct);
	
	void delete(Long id);
	
	//Dung phan trang
	List<ProductModel> findAll(Pageble pageble);
	int countTotalItem();
}
