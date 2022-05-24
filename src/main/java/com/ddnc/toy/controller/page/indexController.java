package com.ddnc.toy.controller.page;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequiredArgsConstructor
@Slf4j
@RequestMapping(value = "/")
@Controller
public class indexController {

    @RequestMapping(path = {""})
    public ModelAndView index() {

        System.out.println("))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))");
        return new ModelAndView("index");
    }

}
