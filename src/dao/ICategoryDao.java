package dao;

import java.util.List;

import model.CategoryModel;
import paging.Pageble;

public interface ICategoryDao extends IGenericDao<CategoryModel>{
	List<CategoryModel> findAll();
	public int countTotalItem();
	List<CategoryModel> findAlls(Pageble pageble);
	CategoryModel findOne(Long id);

}
