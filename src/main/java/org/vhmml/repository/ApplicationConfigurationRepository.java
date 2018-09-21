package org.vhmml.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.vhmml.entity.ConfigurationValue;

public interface ApplicationConfigurationRepository extends CrudRepository<ConfigurationValue, String> {

	public List<ConfigurationValue> findAllByOrderByKeyAsc();

}
