package team.piupiu.qianqian.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import team.piupiu.qianqian.entity.InvestIterm;
import team.piupiu.qianqian.entity.Investor;
import team.piupiu.qianqian.entity.Project;
import team.piupiu.qianqian.entity.Team;

import java.io.Serializable;
import java.util.List;

@Repository
public class ProjectDAO {

    @Autowired
    SessionFactory sessionFactory;

    public List<Project> getAllProject() {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM Project ");
            List<Project> list = query.list();
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }

    }

    public boolean insertProject(Project project) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Serializable save = session.save(project);

            transaction.commit();
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    /**
     * getProjectById
     */
    public Project getProjectById(String projectId) {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM Project where projectId=:projectId");
            query.setParameter("projectId", projectId);
            List<Project> list = query.list();
            if (!list.isEmpty())
                return list.get(0);
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }

    }



    public List<Project> getProjectByUser(String userId) {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM Project where projectUsername=:projectUsername");
            query.setParameter("projectUsername", userId);
            List<Project> list = query.list();
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }

    }


    /**
     * insetTeam
     */

    public void insertTeam(Team team) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Serializable save = session.save(team);

            transaction.commit();
        } catch (Exception ex) {
        }
    }


    /**
     * Inset Invest Items
     */

    public void insertInvestItems(InvestIterm investItem) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Serializable save = session.save(investItem);

            transaction.commit();
        } catch (Exception ex) {
        }
    }


    public List<InvestIterm> getInvestItem(String id) {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM InvestIterm where project=:projectId");
            query.setParameter("projectId", id);
            List<InvestIterm> list = query.list();
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public boolean updateProject(Project project) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            session.update(project);
            transaction.commit();
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }
    }

//    public List<Project> getArtProject() {
//        String projectType = "Art";
//        try (Session session = sessionFactory.openSession()) {
//            Query query = session.createQuery("FROM Project where projectType=:projectType");
//            query.setParameter("projectType",projectType);
//
//            List<Project> list = query.list();
//            return list;
//        } catch (Exception ex) {
//            ex.printStackTrace();
//            return null;
//        }
//    }



    public List<Project> getProjectByType(String type) {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM Project where projectType=:projectType");
            query.setParameter("projectType",type);

            List<Project> list = query.list();
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public List<Team> getTeamInfo(String projectId) {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM Team where project=:projectId");
            query.setParameter("projectId", projectId);
            List<Team> list = query.list();
            if (!list.isEmpty())
                return list;
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }


    }

    public List<Investor> getInvestorByProject(String projectId) {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM Investor where projectId=:projectId");
            query.setParameter("projectId", projectId);
            List<Investor> list = query.list();
            if (!list.isEmpty())
                return list;
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public void insertInvestor(Investor investor) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Serializable save = session.save(investor);

            transaction.commit();
        } catch (Exception ex) {
        }
    }

    public List<Investor> getInvestorByUsername(String username) {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM Investor where username=:username");
            query.setParameter("username",username);
            List<Investor> list = query.list();
            if (!list.isEmpty())
                return list;
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }

    }

    public List<Project> getProjectBySearch(String key) {
        String keyword = "%"+key+"%";
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM Project where projectHead like :key ");
            query.setParameter("key",keyword);
            List<Project> list = query.list();
            if (!list.isEmpty())
                return list;
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }

    }
}
