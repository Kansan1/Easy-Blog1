package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Atest {
    @RequestMapping("/")
    public String index(){
        return "index";
    }

    @RequestMapping("/show")
    public String show(){
        return "show";
    }

    @RequestMapping("/register")
    public String zhuce(){
        return "register";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }


    @RequestMapping("/toAdd")
    public String add(){
        return "addPassage";
    }
}
