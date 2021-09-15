package mapper;

import java.sql.ResultSet;

/**
 * 
 * @author Admin
 *
 * @param <T> Truyen vao mot doi tuong 
 * tra ve mot table cua resultSet
 */
public interface IRowMapper<T> {
	T mapRow(ResultSet resultSet);
}
