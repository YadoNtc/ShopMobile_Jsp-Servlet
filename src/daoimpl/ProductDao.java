package daoimpl;

import java.util.List;

import org.apache.commons.lang.StringUtils;

import dao.IProductDao;
import mapper.ProductMapper;
import model.ProductModel;
import paging.Pageble;

public class ProductDao extends AbstractDao<ProductModel> implements IProductDao {

	@Override
	public Long insertDao(ProductModel productModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO Products ");
		sql.append(
				"(name, code, price, image, description, detail, quantity, createdDate, createdBy, categoryId, producerId) ");
		sql.append("VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		return insert(sql.toString(), productModel.getName(), productModel.getCode(), productModel.getPrice(),
				productModel.getImage(), productModel.getDescription(), productModel.getDetail(),
				productModel.getQuantity(), productModel.getCreatedDate(), productModel.getCreatedBy(),
				productModel.getCategoryId(), productModel.getProducerId());
	}

	@Override
	public ProductModel findOne(Long id) {
		String sql = "SELECT * FROM Products WHERE id = ?";
		List<ProductModel> products = query(sql, new ProductMapper(), id);
		return products.isEmpty() ? null : products.get(0);
	}

	@Override
	public void update(ProductModel updateProduct) {
		StringBuilder sql = new StringBuilder("UPDATE Products SET ");
		sql.append("name = ?, code = ?, price = ?, image = ?, description = ?, detail = ?, ");
		sql.append("quantity = ?, createdDate = ?, categoryId = ?, producerId = ?");
		update(sql.toString(), updateProduct.getName(), updateProduct.getCode(), updateProduct.getPrice(),
				updateProduct.getImage(), updateProduct.getDescription(), updateProduct.getDetail(),
				updateProduct.getQuantity(), updateProduct.getCreatedDate(), updateProduct.getCategoryId(),
				updateProduct.getProducerId());
	}

	@Override
	public void delete(Long id) {
		String sql = "DELETE FROM Products WHERE id = ?";
		update(sql, id);
	}

	@Override
	public List<ProductModel> findAll(Pageble pageble) {
		StringBuilder sql = new StringBuilder("SELECT * FROM Products ");
		if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName())
				&& StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
			sql.append("ORDER BY " + pageble.getSorter().getSortName() + " DESC ");
			sql.append("OFFSET " + pageble.getOffset() + " ROWS ");
			sql.append("FETCH FIRST " + pageble.getLimit() + " ROWS ONLY ");
		}
		return query(sql.toString(), new ProductMapper());
	}

	@Override
	public int countTotalItem() {
		String sql = "SELECT COUNT(*) FROM Products";
		return count(sql);
	}

	@Override
	public List<ProductModel> findAll() {
		String sql = "SELECT * FROM Products ";
		return query(sql.toString(), new ProductMapper());
	}

/*	@Override
	public ProductModel searchByName(String name) {
		StringBuilder sql = new StringBuilder("SELECT * FROM Products ");
		sql.append("WHERE name = ?");
		return query(sql.toString(), new ProductMapper(), name);
	} */

	@Override
	public List<ProductModel> searchByName(String name) {
		StringBuilder sql = new StringBuilder("SELECT * FROM Products ");
		sql.append("WHERE name = ?");
		return query(sql.toString(), new ProductMapper(), name);
	}

}
