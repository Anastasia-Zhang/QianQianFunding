package team.piupiu.qianqian.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import team.piupiu.qianqian.bean.LoginBean;
import team.piupiu.qianqian.service.ProjectService;
import team.piupiu.qianqian.service.SiteDataService;

@Controller

public class MainController {
    @Autowired
    LoginBean loginBean;

    @Autowired
    SiteDataService siteDataService;

    @Autowired
    ProjectService projectService;

    @RequestMapping({"/index"})
    public String index(ModelMap modelMap){
        modelMap.addAttribute("projects",siteDataService.siteData().get(0));
        modelMap.addAttribute("backers",siteDataService.siteData().get(1));
        modelMap.addAttribute("raised",siteDataService.siteData().get(2));
        modelMap.addAttribute("artProject", projectService.getProjectByType("Art"));
        modelMap.addAttribute("communityProject", projectService.getProjectByType("Community"));
        modelMap.addAttribute("foodProject", projectService.getProjectByType("Food"));
        modelMap.addAttribute("publishingProject", projectService.getProjectByType("Publishing"));
        modelMap.addAttribute("otherProject", projectService.getProjectByType("Other"));
        return "index";
    }
    @RequestMapping({"/test"})
    public String doGet(ModelMap modelMap){
        String username = loginBean.getUsername();
        System.out.println(username);
        modelMap.addAttribute("username", username);
        modelMap.addAttribute("artProject", projectService.getProjectByType("Art"));
        modelMap.addAttribute("communityProject", projectService.getProjectByType("Community"));
        modelMap.addAttribute("foodProject", projectService.getProjectByType("Food"));
        modelMap.addAttribute("publishingProject", projectService.getProjectByType("Publishing"));
        modelMap.addAttribute("otherProject", projectService.getProjectByType("Other"));
        return "index_after_login";
    }

    @RequestMapping({"/loginPage"})
    public String toLoginPage(){
        return "login";
    }

    @RequestMapping({"/registerPage"})
    public String toRegisterPage(){
        return "register";
    }

    @RequestMapping({"/warning"})
    public String toWarningPage(){
        return "project/warning";
    }

    @RequestMapping({"/raisingIntro"})
    public String raisingIntro(){
        return "raisingIntro";
    }

    @RequestMapping({"/investIntro"})
    public String investIntro(){
        return "investIntro";
    }


    @RequestMapping({"logout"})
    public ModelAndView Logout(ModelMap map){

        loginBean.clear();
        return new ModelAndView("redirect:/index");

    }

    @RequestMapping({"investNow"})
    public ModelAndView investNow(){
        return new ModelAndView("redirect:/test");
    }
    @RequestMapping({"raisingNow"})
    public ModelAndView raisingNow(){
        return new ModelAndView("redirect:/test");
    }



}
