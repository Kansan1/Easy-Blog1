package com.controller;

import com.bean.Passage;
import com.dao.PPassageDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Collection;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class PassageController {

    @Autowired(required = false)
    private PPassageDao PPassageDao;

    @RequestMapping(value = "/passage", method = GET)
    public String getList(Model model) {
        Collection<Passage> passageList = PPassageDao.getAll();
        model.addAttribute("passageList", passageList);
        return "functionPage";
    }


    @RequestMapping(value = "/passage", method = RequestMethod.POST)
    public String add(Passage passage) {
        PPassageDao.save(passage);
        return "redirect:/passage";
    }

    @RequestMapping(value = "/passage/{id}", method = RequestMethod.GET)
    public String get(@PathVariable("id") Integer id, Model model){
        Passage passage = PPassageDao.get(id);
        model.addAttribute("passage", passage);
        return "view";
    }

    @RequestMapping(value = "/passage", method = RequestMethod.PUT)
    public String addPassage(Passage passage){
        PPassageDao.save(passage);
        return "redirect:/passage";
    }



}
