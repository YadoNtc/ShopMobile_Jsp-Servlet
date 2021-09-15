package daoimpl;

import java.util.List;

import org.apache.commons.lang.StringUtils;

import dao.ICategoryDao;
import mapper.CategoryMapper;
import model.CategoryModel;
import paging.Pageble;

public class CategoryDao extends AbstractDao<CategoryModel> implements ICategoryDao {

	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM Categories";
		return query(sql, new CategoryMapper());
	}

	@Override
	public int countTotalItem() {
		String sql = "SELECT count(*) FROM Categories";
		return count(sql);
	}

	@Override
	public List<CategoryModel> findAlls(Pageble pageble) {
		StringBuilder sql = new StringBuilder("SELECT * FROM Categories ");
		if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
			sql.append("ORDER BY " + pageble.getSorter().getSortName() + " DESC ");
			sql.append("OFFSET " + pageble.getOffset() + " ROWS ");
			sql.append("FETCH FIRST " + pageble.getLimit() + " ROWS ONLY ");
		}
		return query(sql.toString(), new CategoryMapper());
	}

	@Override
	public CategoryModel findOne(Long id) {
		String sql = "SELECT * FROM Categories WHERE Id = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), id);
		return category.isEmpty() ? null : category.get(0);
	}

	

}
