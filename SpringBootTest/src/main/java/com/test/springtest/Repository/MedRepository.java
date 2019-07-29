package com.test.springtest.Repository;

import com.test.springtest.Model.Medicine;
import org.springframework.data.repository.CrudRepository;

/**
 * @author M.Kausik
 */
public interface MedRepository extends CrudRepository<Medicine,Integer> {
}
