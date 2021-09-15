package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.ProducerModel;

public class ProducerMapper implements IRowMapper<ProducerModel> {

	@Override
	public ProducerModel mapRow(ResultSet resultSet) {
		try {
			ProducerModel producer = new ProducerModel();
			producer.setId(resultSet.getLong("id"));
			producer.setName(resultSet.getString("name"));
			producer.setCode(resultSet.getString("code"));
			return producer;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
