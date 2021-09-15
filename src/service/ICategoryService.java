package service;

import java.util.List;

import model.CategoryModel;
import paging.Pageble;

public interface ICategoryService {
	List<CategoryModel>  findAll();
	public int countTotalItem();
	List<CategoryModel>  findAlls(Pageble pageble);
}
