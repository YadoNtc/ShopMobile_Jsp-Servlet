package service;

import java.util.List;

import model.ProductModel;
import paging.Pageble;

public interface IProductService {
	
	List<ProductModel> findAlll();
	
	ProductModel insertService(ProductModel productModel);	
		
	ProductModel update(ProductModel updateProduct);
	
	ProductModel getProductById(ProductModel productModel);
	
	void delete(Long[] ids);
	
	ProductModel findOne(Long id);
	
	//Dung phan trang
	List<ProductModel> findAll(Pageble pageble);
	int countTotalItem();

	List<ProductModel> searchByName(String name);
}
