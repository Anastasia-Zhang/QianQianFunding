package team.piupiu.qianqian.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import team.piupiu.qianqian.dao.ProjectDAO;
import team.piupiu.qianqian.entity.InvestIterm;
import team.piupiu.qianqian.entity.Investor;
import team.piupiu.qianqian.entity.Project;
import team.piupiu.qianqian.entity.Team;
import team.piupiu.qianqian.util.Constants;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Service
public class ProjectService {

    @Autowired
    ProjectDAO projectDAO;


    /**
     * getAllProjects
     */
    public List<Project> getAllProjects() {
        return projectDAO.getAllProject();
    }


    public boolean saveProject(Project project, MultipartFile file) {
        if (file != null) {

            System.out.println("save IMG ");
            // 生成图片存储的名称，UUID 避免相同图片名冲突
            String originalFileName = file.getOriginalFilename(); // 原始文件名
            String suffix = originalFileName.substring(originalFileName.lastIndexOf(".")); // 图片后缀
            String fileName = UUID.randomUUID().toString() + suffix;
            String filePath = Constants.PROJECT_IMG_PATH + fileName;
            File saveFile = new File(filePath);
            try {
                // 将上传的文件保存到服务器文件系统
                file.transferTo(saveFile);
                // 记录服务器文件系统图片名称
                String relativePath = "../img/project/" + fileName;
                project.setProjectImg(relativePath);

                System.out.println("IMG save finish");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return projectDAO.insertProject(project);

    }


    /**
     * getProjectInfo
     */

    public Project getProjectInfo(String id) {

        return projectDAO.getProjectById(id);
    }


    public List<Project> getProjectByUser(String id) {

        return projectDAO.getProjectByUser(id);
    }

    public List<Project> getProjectByType(String type) {

        return projectDAO.getProjectByType(type);
    }


    public void insertTeam(Team team, MultipartFile file) {

        if (file != null) {

            System.out.println("save IMG ");
            // 生成图片存储的名称，UUID 避免相同图片名冲突
            String originalFileName = file.getOriginalFilename(); // 原始文件名
            String suffix = originalFileName.substring(originalFileName.lastIndexOf(".")); // 图片后缀
            String fileName = UUID.randomUUID().toString() + suffix;
            String filePath = Constants.TEAM_IMG_PATH + fileName;
            File saveFile = new File(filePath);

            try {
                // 将上传的文件保存到服务器文件系统
                file.transferTo(saveFile);
                // 记录服务器文件系统图片名称

                String relativePath = "../img/team/" + fileName;

                team.setImage(relativePath);

                System.out.println("Team IMG save finish");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        projectDAO.insertTeam(team);


    }

    public void insertInvestItems(InvestIterm investIterm) {
        projectDAO.insertInvestItems(investIterm);


    }

    public List<InvestIterm> getInvestItem(String id) {
        return projectDAO.getInvestItem(id);
    }

    public boolean updateProject(Project project) {
        return projectDAO.updateProject(project);
    }


    public List<Team> getTeamInfo(String projectId) {
        return projectDAO.getTeamInfo(projectId);
    }

    public List<Investor> getAllInvestor(String projectId) {
        return projectDAO.getInvestorByProject(projectId);
    }

    public void inserInvestor(Investor investor) {
        projectDAO.insertInvestor(investor);
    }

    public List<Investor> getInvestorByUserame(String username) {
        return projectDAO.getInvestorByUsername(username);
    }

    public List<Project> getProjectBySearch(String key) {
        return projectDAO.getProjectBySearch(key);
    }
}
