package daoimpl;

import java.util.List;

import dao.IProducerDao;
import mapper.ProducerMapper;
import model.ProducerModel;

public class ProducerDao extends AbstractDao<ProducerModel> implements IProducerDao {

	@Override
	public List<ProducerModel> findAll() {
		String sql = "SELECT * FROM Producer";
		return query(sql, new ProducerMapper());
	}

	@Override
	public ProducerModel findOne(Long id) {
		String sql = "SELECT * FROM Producer WHERE id = ?";
		List<ProducerModel> producer = query(sql, new ProducerMapper(), id);
		return producer.isEmpty() ? null : producer.get(0);
	}

}
