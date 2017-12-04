package com.jin2ml.controller;

import com.jin2ml.entity.Article;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ArticleController {

    @RequestMapping(value = "article/{id}", method = RequestMethod.GET)
    public ModelAndView getArticle(@PathVariable Integer id){
        ModelAndView modelAndView = new ModelAndView("article");
        modelAndView.addObject("id", id);
        return modelAndView;
    }

    /**
     * 返回所有文章
     * @return
     */
    @RequestMapping("article")
    public ModelAndView getArticles(){
        ModelAndView modelAndView = new ModelAndView("article");
        List<Article> articles = new ArrayList<>(5);

        modelAndView.addObject("articles", articles);
        return modelAndView;
    }
}
