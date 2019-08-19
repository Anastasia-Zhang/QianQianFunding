package team.piupiu.qianqian.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import team.piupiu.qianqian.bean.LoginBean;
import team.piupiu.qianqian.entity.Investor;
import team.piupiu.qianqian.entity.Project;
import team.piupiu.qianqian.service.ProjectService;

@Controller
public class InvestController {

    @Autowired
    ProjectService projectService;

    @Autowired
    LoginBean loginBean;

    @RequestMapping({"/invest"})
    public String invest(int amount, String projectId, ModelMap modelMap){

        Project project = projectService.getProjectInfo(projectId);
        int invested = project.getProjectInvested();
        project.setProjectInvested(invested+amount);
        project.setProjectInvestors(project.getProjectInvestors()+1);


        if (projectService.updateProject(project)){
            Investor investor = new Investor();
            investor.setInvested(amount);
            investor.setProjectId(projectId);
            investor.setUsername(loginBean.getUsername());
            projectService.inserInvestor(investor);

            modelMap.addAttribute("username",loginBean.getUsername());
            return "invest_finish";
        }else {
            return "invest_panel";
        }



    }
}
