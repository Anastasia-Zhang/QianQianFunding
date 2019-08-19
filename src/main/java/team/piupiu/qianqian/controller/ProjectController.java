package team.piupiu.qianqian.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import team.piupiu.qianqian.bean.LoginBean;
import team.piupiu.qianqian.entity.*;
import team.piupiu.qianqian.service.ProjectService;

import java.util.*;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping({"/project"})
public class ProjectController {

    @Autowired
    LoginBean loginBean;

    @Autowired
    ProjectService projectService;


    @RequestMapping({"/raising"})
    public String toProjectUploadPage(ModelMap map) {

        String username = loginBean.getUsername();
        System.out.println("^^^^^^^^^^^" + username);
        map.addAttribute("username", username);
        map.addAttribute("projectId", UUID.randomUUID().toString());

        return "upload_info";

    }

    @RequestMapping({"/modify"})
    public String modifyProject(String projectId, ModelMap modelMap) {
        Project project = projectService.getProjectInfo(projectId);
        modelMap.addAttribute("project", project);
        return "project/ModifyProject";
    }


    @RequestMapping({"/uploadProjectInfo"})

    public String UploadProjectInfo(Project project, MultipartFile file, MultipartFile teamImg[], String name[],
                                    String intro[], int amount[], String head[], String detail[], ModelMap map) {
        if (projectService.saveProject(project, file)) {
            Team team = new Team();
            for (int i = 0; i < name.length; i++) {
                team.setProject(project.getProjectId());
                team.setName(name[i]);
                team.setIntro(intro[i]);
                projectService.insertTeam(team, teamImg[i]);
                System.out.println(name[i]);
            }
            System.out.println("begin insert Invest Iterms");
            InvestIterm investIterm = new InvestIterm();

            for (int i = 0; i < head.length; i++) {
                investIterm.setProject(project.getProjectId());
                investIterm.setAmount(amount[i]);
                investIterm.setHead(head[i]);
                investIterm.setDetail(detail[i]);
                projectService.insertInvestItems(investIterm);
            }

            map.addAttribute("User", project.getProjectUsername());

            return "afterUpload";
        } else {
            return "upload_info";
        }
    }


    @RequestMapping({"/project_info"})
    public String toProjectInfo(String projectId, ModelMap modelMap) {
        System.out.println("Go to Project Info");
        System.out.println(projectId);
        Project project = projectService.getProjectInfo(projectId);
        List<Team> team = projectService.getTeamInfo(projectId);
        double raise_rate = (project.getProjectInvested().doubleValue() / project.getProjectAmount().doubleValue());

        int days_left = 30;
        double target_rate = raise_rate;
        modelMap.addAttribute("project", project);
        modelMap.addAttribute("team", team);
        modelMap.addAttribute("raised", raise_rate);
        modelMap.addAttribute("days_left", days_left);
        modelMap.addAttribute("target", target_rate);
        modelMap.addAttribute("projectId", project.getProjectId());

        return "project_info";

    }

    @RequestMapping({"/project_info_afterlogin"})
    public String toProjectInfoAfterLogin(String projectId, ModelMap modelMap) {
        System.out.println("Go to Project Info");
        System.out.println(projectId);
        Project project = projectService.getProjectInfo(projectId);
        List<Team> team = projectService.getTeamInfo(projectId);
        double raise_rate = (project.getProjectInvested().doubleValue() / project.getProjectAmount().doubleValue());

        int days_left = 30;
        double target_rate = raise_rate;
        modelMap.addAttribute("project", project);
        modelMap.addAttribute("team", team);
        modelMap.addAttribute("raised", raise_rate);
        modelMap.addAttribute("days_left", days_left);
        modelMap.addAttribute("target", target_rate);
        modelMap.addAttribute("projectId", project.getProjectId());
        modelMap.addAttribute("username", loginBean.getUsername());

        return "project_info_afterlogin";

    }

    @RequestMapping({"/managePanel"})
    public String managePanel(String projectId, ModelMap modelMap) {
        Project project = projectService.getProjectInfo(projectId);
        List<Investor> investor = projectService.getAllInvestor(projectId);
        double raise_rate = (project.getProjectInvested().doubleValue() / project.getProjectAmount().doubleValue());
        int days_left = 30;
        double target_rate = raise_rate;
        modelMap.addAttribute("project", project);
        modelMap.addAttribute("investor", investor);
        modelMap.addAttribute("raised", raise_rate);
        modelMap.addAttribute("days_left", days_left);
        modelMap.addAttribute("target", target_rate);
        modelMap.addAttribute("projectId", project.getProjectId());


        return "project/managePanel";
    }


    @RequestMapping({"/manageProject"})
    public String manageProject(String id, ModelMap modelMap) {

        modelMap.addAttribute("project", projectService.getProjectByUser(id));
        modelMap.addAttribute("username", loginBean.getUsername());
        return "project/ProjectManagePage";

    }

    @RequestMapping({"/investPage"})
    public String investPage(String id, ModelMap modelMap) {

        modelMap.addAttribute("item", projectService.getInvestItem(id));
        modelMap.addAttribute("projectId", id);
        return "invest_panel";

    }

    @RequestMapping({"/explore"})
    public String explorePage(ModelMap modelMap) {
        String username = loginBean.getUsername();
        System.out.println(username);
        modelMap.addAttribute("username", username);
        modelMap.addAttribute("artProject", projectService.getProjectByType("Art"));
        modelMap.addAttribute("communityProject", projectService.getProjectByType("Community"));
        modelMap.addAttribute("foodProject", projectService.getProjectByType("Food"));
        modelMap.addAttribute("publishingProject", projectService.getProjectByType("Publishing"));
        modelMap.addAttribute("otherProject", projectService.getProjectByType("Other"));
        return "project/explore";
    }


    @RequestMapping({"/myInvest"})
    public String myInvest(String username, ModelMap modelMap) {

        modelMap.addAttribute("username", username);
        List<Investor> investors = projectService.getInvestorByUserame(username);
        List<Project> projects = new ArrayList<>();
        if (investors == null) {
            return "investNow";
        } else {
            for (int i = 0; i < investors.size(); i++) {
                Project project = projectService.getProjectInfo(investors.get(i).getProjectId());
                projects.add(i, project);
            }
        }

        modelMap.addAttribute("investProject", projects);


        return "myInvest";
    }

    @RequestMapping({"/topSearch"})
    public String topSearch(String key, ModelMap modelMap) {
        modelMap.addAttribute("username",loginBean.getUsername());
        modelMap.addAttribute("result", projectService.getProjectBySearch(key));

        return "project/SearchResult";
    }



    @RequestMapping({"/loginPage"})
    public String toLoginPage(){
        return "login";
    }

    @RequestMapping({"/registerPage"})
    public String toRegisterPage(){
        return "register";
    }

}
