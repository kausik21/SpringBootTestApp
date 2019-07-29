package com.test.springtest.Service;

import com.test.springtest.Model.Medicine;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author M.Kausik
 */
@Service
public interface MedService {
    List<Medicine> getMedicine();
    void addMedicine(Medicine medicine);
    void deleteMedicine(int medId);
}
