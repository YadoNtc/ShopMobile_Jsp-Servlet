package dao;

import java.util.List;

import mapper.IRowMapper;

public interface IGenericDao<T> {
	
	@SuppressWarnings("hiding")
	<T> List<T> query (String sql, IRowMapper<T> rowMapper, Object... parameters);
	Long insert(String sql, Object... parameters);
	void update(String sql, Object... parameters);
	int count(String sql, Object... parameters);
	//ProductModel querys (String sql, IRowMapper<T> rowMapper, Object... parameters);
}
