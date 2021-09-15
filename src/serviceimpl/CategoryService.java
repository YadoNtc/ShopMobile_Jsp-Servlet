package serviceimpl;

import java.util.List;

import javax.inject.Inject;

import dao.ICategoryDao;
import model.CategoryModel;
import paging.Pageble;
import service.ICategoryService;

public class CategoryService implements ICategoryService{

	@Inject
	private ICategoryDao categoryDao;

	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}

	@Override
	public int countTotalItem() {
		return categoryDao.countTotalItem();
	}

	@Override
	public List<CategoryModel> findAlls(Pageble pageble) {
		return categoryDao.findAlls(pageble);
	}
	
	

}
