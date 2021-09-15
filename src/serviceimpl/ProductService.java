package serviceimpl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import dao.ICategoryDao;
import dao.IProducerDao;
import dao.IProductDao;
import model.CategoryModel;
import model.ProducerModel;
import model.ProductModel;
import paging.Pageble;
import service.IProductService;

public class ProductService implements IProductService{
	
	@Inject
	private IProductDao productDao;
	
	@Inject
	private ICategoryDao categoryDao;
	
	@Inject IProducerDao producerDao;

	@Override
	public ProductModel insertService(ProductModel productModel) {
		productModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		
		CategoryModel category = categoryDao.findOne(productModel.getCategoryId());
		productModel.setCategoryId(category.getId());
		
		Long productId = productDao.insertDao(productModel);
		//return id cua san pham ;
		return productDao.findOne(productId);
	}

	@Override
	public ProductModel findOne(Long id) {
		ProductModel product = productDao.findOne(id);
		CategoryModel category = categoryDao.findOne(product.getCategoryId());
		product.setCategoryId(category.getId());
		
		ProducerModel producer = producerDao.findOne(product.getProducerId());
		product.setProducerId(producer.getId());
		return product;
	}

	@Override
	public ProductModel update(ProductModel updateProduct) {
		ProductModel oldModel = productDao.findOne(updateProduct.getId());
		updateProduct.setCreatedDate(oldModel.getCreatedDate());
		
		CategoryModel category = categoryDao.findOne(updateProduct.getCategoryId());
		updateProduct.setCategoryId(category.getId());
		
		productDao.update(updateProduct);
		return updateProduct;	
	}
	
	@Override
	public void delete(Long[] ids) {
		for (Long id: ids) {
			productDao.delete(id);
		}		
	}

	@Override
	public List<ProductModel> findAll(Pageble pageble) {
		return productDao.findAll(pageble);
	}

	@Override
	public int countTotalItem() {
		return productDao.countTotalItem();
	}


	@Override
	public List<ProductModel> findAlll() {
		return productDao.findAll();
	}

	/*
	 * @Override public ProductModel getProductById(ProductModel productModel) {
	 * CategoryModel category = categoryDao.findOne(productModel.getCategoryId());
	 * productModel.setCategoryId(category.getId());
	 * 
	 * //Long productId = productDao.getProductById(productModel); //return id cua
	 * san pham ; //return productDao.findOne(productId); }
	 */

	@Override
	public List<ProductModel> searchByName(String name) {
		
		return (List<ProductModel>) productDao.searchByName(name);
	}

	@Override
	public ProductModel getProductById(ProductModel productModel) {
		// TODO Auto-generated method stub
		return null;
	}



}
