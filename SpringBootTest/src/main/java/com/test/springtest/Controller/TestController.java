package com.test.springtest.Controller;

import com.test.springtest.Model.Medicine;
import com.test.springtest.Service.MedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author M.Kausik
 */
@RestController
public class TestController {

    @Autowired
    MedService medService;

//    @GetMapping("medicines")
//    public List<Medicine> getMedicines(){
//        return medService.getMedicine();
//    }


    @RequestMapping("medicine")
    public ModelAndView getMedicines(Model model){
        List<Medicine> medicines = medService.getMedicine();
        model.addAttribute("medicines",medicines);
        return new ModelAndView("Home");
    }

    @RequestMapping(value = "medicine", method = RequestMethod.POST)
    public String addMedicine(@ModelAttribute Medicine medicine){
        medService.addMedicine(medicine);
        return "redirect : Home";
    }
}
