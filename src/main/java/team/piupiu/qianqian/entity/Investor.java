package team.piupiu.qianqian.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Investor {
    private int id;
    private String username;
    private String projectId;
    private Integer invested;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "username", nullable = true, length = 50)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "projectId", nullable = true, length = 50)
    public String getProjectId() {
        return projectId;
    }

    public void setProjectId(String projectId) {
        this.projectId = projectId;
    }

    @Basic
    @Column(name = "invested", nullable = true)
    public Integer getInvested() {
        return invested;
    }

    public void setInvested(Integer invested) {
        this.invested = invested;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Investor investor = (Investor) o;

        if (id != investor.id) return false;
        if (username != null ? !username.equals(investor.username) : investor.username != null) return false;
        if (projectId != null ? !projectId.equals(investor.projectId) : investor.projectId != null) return false;
        if (invested != null ? !invested.equals(investor.invested) : investor.invested != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (projectId != null ? projectId.hashCode() : 0);
        result = 31 * result + (invested != null ? invested.hashCode() : 0);
        return result;
    }
}
