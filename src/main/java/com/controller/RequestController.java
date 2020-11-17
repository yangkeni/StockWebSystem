package com.controller;

import com.service.Download;
import com.service.URLTransform;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class RequestController {
    @RequestMapping("/request")
    @ResponseBody
    public ModelAndView save(String search) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        URLTransform urlTransform = new URLTransform();
        String res = urlTransform.transform(search);

        Download download = new Download();
        download.downloadCSV(res, search);
        modelAndView.setViewName("redirect:/specific.jsp?search=" + search);
        return modelAndView;
    }

    @RequestMapping("/html/specific.html")
    @ResponseBody
    public ModelAndView save1(String search) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        URLTransform urlTransform = new URLTransform();
        String res = urlTransform.transform(search);

        Download download = new Download();
        download.downloadCSV(res, search);
        modelAndView.setViewName("redirect:/specific.jsp?search=" + search);
        return modelAndView;
    }
}
