package team.piupiu.qianqian.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class SiteDataDAO {
    @Autowired
    SessionFactory sessionFactory;

    public Long projectsAmount() {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Long count = (Long) session.createQuery("select count(*) from Project").uniqueResult();
            transaction.commit();
            return  count;
        } catch (Exception e) {
            e.printStackTrace();
            return Long.valueOf(0);
        }


    }
    public Long backersAmount() {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Long backers = (Long) session.createQuery("select sum(a.projectInvestors) from Project a").uniqueResult();
            transaction.commit();
            System.out.println("$$$$$$$$$$$$$$$------"+ backers +"-------&&&&&&&&&&&&&&&&&&&&&");
            return backers;
        } catch (Exception e) {
            e.printStackTrace();
            return Long.valueOf(0);
        }


    }


    public Long raisedAmount(){
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Long  raised = (Long) session.createQuery("select sum(b.projectInvested) from Project b").uniqueResult();
            transaction.commit();
            return raised;
        } catch (Exception e) {
            e.printStackTrace();
            return Long.valueOf(0);
        }

    }



}
