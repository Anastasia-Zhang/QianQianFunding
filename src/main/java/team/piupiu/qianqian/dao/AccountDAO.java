package team.piupiu.qianqian.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import team.piupiu.qianqian.entity.User;

import java.io.Serializable;


@Repository
public class AccountDAO {

    @Autowired
    SessionFactory sessionFactory;



    public void insertAccount(User user) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            Serializable save = session.save(user);

            transaction.commit();
        } catch (Exception ex) {

        }
    }
}
