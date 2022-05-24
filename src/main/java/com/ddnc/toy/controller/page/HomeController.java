package com.ddnc.toy.controller.page;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@RequestMapping(value = "/")
@Controller
public class HomeController {


    @RequestMapping(path = {""})
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping(path = "service")
    public ModelAndView service() {
        return new ModelAndView("service/service");
    }


//    @RequestMapping("/user")
//    public ModelAndView user() {
//        return new ModelAndView("/pages/user")
//                .addObject("menuList", adminMenuService.getAdminMenu())
//                .addObject("code", "user")
//                ;
//    }
}
