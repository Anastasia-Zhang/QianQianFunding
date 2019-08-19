package team.piupiu.qianqian.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

@Entity
public class Project {
    private String projectId;
    private String projectUsername;
    private String projectHead;
    private Date projectDate;
    private String projectLabel;
    private String projectIntro;
    private String projectImg;
    private Integer projectAmount;
    private Integer projectTime;
    private String projectDetail;
    private String projectVideo;
    private Integer projectInvestors;
    private Integer projectInvested;
    private Integer projectProgress;
    private Integer projectFollow;
    private String projectType;

    @Id
    @Column(name = "project_id", nullable = false, length = 50)
    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    @Basic
    @Column(name = "project_username", nullable = true, length = 50)
    public String getProjectUsername() {
        return projectUsername;
    }

    public void setProjectUsername(String projectUsername) {
        this.projectUsername = projectUsername;
    }

    @Basic
    @Column(name = "project_head", nullable = true, length = 50)
    public String getProjectHead() {
        return projectHead;
    }

    public void setProjectHead(String projectHead) {
        this.projectHead = projectHead;
    }

    @Basic
    @Column(name = "project_date", nullable = true)
    public Date getProjectDate() {
        return projectDate;
    }

    public void setProjectDate(Date projectDate) {
        this.projectDate = projectDate;
    }

    @Basic
    @Column(name = "project_label", nullable = true, length = 200)
    public String getProjectLabel() {
        return projectLabel;
    }

    public void setProjectLabel(String projectLabel) {
        this.projectLabel = projectLabel;
    }

    @Basic
    @Column(name = "project_intro", nullable = true, length = 50000)
    public String getProjectIntro() {
        return projectIntro;
    }

    public void setProjectIntro(String projectIntro) {
        this.projectIntro = projectIntro;
    }

    @Basic
    @Column(name = "project_img", nullable = true, length = 200)
    public String getProjectImg() {
        return projectImg;
    }

    public void setProjectImg(String projectImg) {
        this.projectImg = projectImg;
    }

    @Basic
    @Column(name = "project_amount", nullable = true)
    public Integer getProjectAmount() {
        return projectAmount;
    }

    public void setProjectAmount(Integer projectAmount) {
        this.projectAmount = projectAmount;
    }

    @Basic
    @Column(name = "project_time", nullable = true)
    public Integer getProjectTime() {
        return projectTime;
    }

    public void setProjectTime(Integer projectTime) {
        this.projectTime = projectTime;
    }

    @Basic
    @Column(name = "project_detail", nullable = true, length = 5000)
    public String getProjectDetail() {
        return projectDetail;
    }

    public void setProjectDetail(String projectDetail) {
        this.projectDetail = projectDetail;
    }

    @Basic
    @Column(name = "project_video", nullable = true, length = 200)
    public String getProjectVideo() {
        return projectVideo;
    }

    public void setProjectVideo(String projectVideo) {
        this.projectVideo = projectVideo;
    }

    @Basic
    @Column(name = "project_investors", nullable = true)
    public Integer getProjectInvestors() {
        return projectInvestors;
    }

    public void setProjectInvestors(Integer projectInvestors) {
        this.projectInvestors = projectInvestors;
    }

    @Basic
    @Column(name = "project_invested", nullable = true)
    public Integer getProjectInvested() {
        return projectInvested;
    }

    public void setProjectInvested(Integer projectInvested) {
        this.projectInvested = projectInvested;
    }

    @Basic
    @Column(name = "project_progress", nullable = true)
    public Integer getProjectProgress() {
        return projectProgress;
    }

    public void setProjectProgress(Integer projectProgress) {
        this.projectProgress = projectProgress;
    }

    @Basic
    @Column(name = "project_follow", nullable = true)
    public Integer getProjectFollow() {
        return projectFollow;
    }

    public void setProjectFollow(Integer projectFollow) {
        this.projectFollow = projectFollow;
    }

    @Basic
    @Column(name = "project_type", nullable = true, length = 50)
    public String getProjectType() {
        return projectType;
    }

    public void setProjectType(String projectType) {
        this.projectType = projectType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Project project = (Project) o;

        if (projectId != null ? !projectId.equals(project.projectId) : project.projectId != null) return false;
        if (projectUsername != null ? !projectUsername.equals(project.projectUsername) : project.projectUsername != null)
            return false;
        if (projectHead != null ? !projectHead.equals(project.projectHead) : project.projectHead != null) return false;
        if (projectDate != null ? !projectDate.equals(project.projectDate) : project.projectDate != null) return false;
        if (projectLabel != null ? !projectLabel.equals(project.projectLabel) : project.projectLabel != null)
            return false;
        if (projectIntro != null ? !projectIntro.equals(project.projectIntro) : project.projectIntro != null)
            return false;
        if (projectImg != null ? !projectImg.equals(project.projectImg) : project.projectImg != null) return false;
        if (projectAmount != null ? !projectAmount.equals(project.projectAmount) : project.projectAmount != null)
            return false;
        if (projectTime != null ? !projectTime.equals(project.projectTime) : project.projectTime != null) return false;
        if (projectDetail != null ? !projectDetail.equals(project.projectDetail) : project.projectDetail != null)
            return false;
        if (projectVideo != null ? !projectVideo.equals(project.projectVideo) : project.projectVideo != null)
            return false;
        if (projectInvestors != null ? !projectInvestors.equals(project.projectInvestors) : project.projectInvestors != null)
            return false;
        if (projectInvested != null ? !projectInvested.equals(project.projectInvested) : project.projectInvested != null)
            return false;
        if (projectProgress != null ? !projectProgress.equals(project.projectProgress) : project.projectProgress != null)
            return false;
        if (projectFollow != null ? !projectFollow.equals(project.projectFollow) : project.projectFollow != null)
            return false;
        if (projectType != null ? !projectType.equals(project.projectType) : project.projectType != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = projectId != null ? projectId.hashCode() : 0;
        result = 31 * result + (projectUsername != null ? projectUsername.hashCode() : 0);
        result = 31 * result + (projectHead != null ? projectHead.hashCode() : 0);
        result = 31 * result + (projectDate != null ? projectDate.hashCode() : 0);
        result = 31 * result + (projectLabel != null ? projectLabel.hashCode() : 0);
        result = 31 * result + (projectIntro != null ? projectIntro.hashCode() : 0);
        result = 31 * result + (projectImg != null ? projectImg.hashCode() : 0);
        result = 31 * result + (projectAmount != null ? projectAmount.hashCode() : 0);
        result = 31 * result + (projectTime != null ? projectTime.hashCode() : 0);
        result = 31 * result + (projectDetail != null ? projectDetail.hashCode() : 0);
        result = 31 * result + (projectVideo != null ? projectVideo.hashCode() : 0);
        result = 31 * result + (projectInvestors != null ? projectInvestors.hashCode() : 0);
        result = 31 * result + (projectInvested != null ? projectInvested.hashCode() : 0);
        result = 31 * result + (projectProgress != null ? projectProgress.hashCode() : 0);
        result = 31 * result + (projectFollow != null ? projectFollow.hashCode() : 0);
        result = 31 * result + (projectType != null ? projectType.hashCode() : 0);
        return result;
    }
}
