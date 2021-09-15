package dao;

import java.util.List;

import model.ProducerModel;

public interface IProducerDao extends IGenericDao<ProducerModel>{
	List<ProducerModel> findAll();
	ProducerModel findOne(Long id);
}
