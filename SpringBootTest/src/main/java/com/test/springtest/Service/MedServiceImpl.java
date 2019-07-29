package com.test.springtest.Service;

import com.test.springtest.Model.Medicine;
import com.test.springtest.Repository.MedRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author M.Kausik
 */
@Service
public class MedServiceImpl implements MedService {
    @Autowired
    MedRepository medRepository;

    @Override
    public List<Medicine> getMedicine(){
        return (List<Medicine>) medRepository.findAll();
    }

    @Override
    public void addMedicine(Medicine medicine) {
        medRepository.save(medicine);
    }

    @Override
    public void deleteMedicine(int medId) {
        medRepository.deleteById(medId);
    }
}
