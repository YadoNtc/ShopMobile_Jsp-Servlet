package serviceimpl;

import java.util.List;

import javax.inject.Inject;

import dao.IProducerDao;
import model.ProducerModel;
import service.IProducerService;

public class ProducerService implements IProducerService {
	
	@Inject
	private IProducerDao producerDao;
	
	@Override
	public List<ProducerModel> findAll() {	
		return producerDao.findAll();
	}

}
